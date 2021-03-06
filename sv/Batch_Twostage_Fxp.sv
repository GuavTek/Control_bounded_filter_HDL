`ifndef BATCH_TWOSTAGE_FXP_SV_
`define BATCH_TWOSTAGE_FXP_SV_

// n_int 9
// 60dB n_mant 14
// 70dB n_mant 16

`include "Util.sv"
`include "FxpPU.sv"
`include "CFxpPU.sv"
`include "Recursion_Fxp.sv"
`include "LUT_Fxp.sv"
`include "Fxp_To_Fxp.sv"
`include "ClkDiv.sv"
`include "ValidCount.sv"
`include "InputReg.sv"

`define MAX_LUT_SIZE 4
`define COMB_ADDERS 3
`define OUT_WIDTH 12

module Batch_Twostage_Fxp #(
    parameter depth = 180,
    parameter DSR1 = 2,
    parameter DSR2 = 6,
    parameter n_mant = 14,
    parameter n_int = 9
) (
    in, rst, clk, out, valid,
    // Sample memory
    sampleAddrIn, sampleAddrOut1, sampleAddrOut2, sampleAddrOut3,
	sampleClk, sampleWrite,	sampleDataIn, sampleDataOut1, sampleDataOut2, sampleDataOut3,
    // Part result memory
    resAddrInF, resAddrInB, resAddrOutF, resAddrOutB, resClkF, resClkB, resWriteF, resWriteB,
	resDataInF, resDataInB, resDataOutF, resDataOutB
);
    import Coefficients_Fx::*;
    import Coefficients_Fx::M;
    
    localparam DSR = DSR1 * DSR2;
    localparam int DownResultDepth = $ceil((0.0 + depth) / DSR);
    localparam int DownSampleDepth = DownResultDepth * DSR2;
    localparam SampleWidth = M*DSR1; 
    localparam n_tot = n_int + n_mant;
    localparam int LUT_Layers = $clog2(int'($ceil((0.0 + SampleWidth)/`MAX_LUT_SIZE)));
    localparam int LUT_Delay = $floor((0.0 + LUT_Layers)/`COMB_ADDERS);
    localparam int Recursion_Delay = $ceil((1.0 + LUT_Delay)/DSR2) +4;
    localparam int InvRec_Delay = $ceil((1.0 + LUT_Delay)/DSR2)*DSR2;
    
    // NB! Only tested with DSR < 24
    localparam SampleDelay = (InvRec_Delay - LUT_Delay) + DSR2 + ((DSR1 == 1) ? ((DSR2 < 3) ? 1 - DSR2 : 1) : DSR2 - 1);
    localparam RegPropDelay = (InvRec_Delay) + DSR2 + ((DSR1 == 1) ? ((DSR2 < 3) ? 1 - DSR2 : 1) : DSR2 - 1);
    
    /*
    initial begin
        $info("LUT_Layers = %d", LUT_Layers);
        $info("LUT_Delay = %d", LUT_Delay);
        $info("Recursion_Delay = %d", Recursion_Delay);
        $info("InvRec_Delay = %d", InvRec_Delay);
        $info("SampleDelay = %d", SampleDelay);
        $info("RegPropDelay = %d", RegPropDelay);
    end
    */

    input wire [M-1:0] in;
    input logic rst, clk;
    output logic[`OUT_WIDTH-1:0] out;
    output logic valid;
    // Sample memory
    output logic[$clog2(4*DownSampleDepth)-1:0]  sampleAddrIn, sampleAddrOut1, sampleAddrOut2, sampleAddrOut3;
	output logic sampleClk, sampleWrite;
	output logic[SampleWidth-1:0] sampleDataIn;
	input logic[SampleWidth-1:0] sampleDataOut1, sampleDataOut2, sampleDataOut3;
    // Part result memory
    output logic[$clog2(2*DownResultDepth)-1:0]  resAddrInF, resAddrInB, resAddrOutF, resAddrOutB;
	output logic resClkF, resClkB, resWriteF, resWriteB;
	output logic signed[`OUT_WIDTH-1:0] resDataInF, resDataInB;
	input logic signed[`OUT_WIDTH-1:0] resDataOutF, resDataOutB;

    // Downsampled clocks
    logic[$clog2(DSR1)-1:0] divCnt1;
    logic[$clog2(DSR)-1:0] divCnt;
    logic clkDS, clkRecurse;
    ClkDiv #(.DSR(DSR1)) ClkDivider1 (.clkIn(clk), .rst(rst), .clkOut(clkRecurse), .cntOut(divCnt1));
    ClkDiv #(.DSR(DSR)) ClkDivider2 (.clkIn(clk), .rst(rst), .clkOut(clkDS), .cntOut(divCnt));

    // Count valid samples
    localparam validTime = 5*DownResultDepth;
    localparam validComp = 3*DownResultDepth + Recursion_Delay;
    logic validCompute;
    ValidCount #(.TopVal(validTime), .SecondVal(validComp)) vc1 (.clk(clkDS), .rst(rst), .out(valid), .out2(validCompute));

    // CDC 1: clk -> clkRecurse
    // Input register
    logic[SampleWidth-1:0] inShift;
    generate
        if(DSR1 > 1) begin
            always @(posedge clk) begin
                inShift <= {inShift[SampleWidth-M-1:0], in};
            end
        end else begin
            always @(posedge clk) begin
                inShift <= in;
            end
        end
    endgenerate

    logic[SampleWidth-1:0] inSample;
    always @(posedge clkRecurse) begin
        inSample <= inShift;
    end

    // Counters for batch cycle
    logic[$clog2(DownSampleDepth)-1:0] sampBatCnt, sampBatCntRev;
    logic[$clog2(DownResultDepth)-1:0] resBatCnt_temp, resBatCntRev_temp;
    logic cyclePulse;
    always @(posedge clkRecurse, negedge rst) begin
        if(!rst) begin
            sampBatCnt <= 'b0;
            sampBatCntRev <= DownSampleDepth-1;
        end else if(!cyclePulse) begin
            sampBatCnt <= 'b0;
            sampBatCntRev <= DownSampleDepth-1;
        end else begin
            sampBatCnt <= sampBatCnt + 1;
            sampBatCntRev <= sampBatCntRev - 1;
        end
    end

    assign resBatCnt_temp = sampBatCnt / DSR2;
    assign resBatCntRev_temp = sampBatCntRev / DSR2;

    // Is low when the cycle is ending
    assign cyclePulse = !(sampBatCnt == (DownSampleDepth-1));

    // Counter for cycles
    logic[1:0] cycle, cycleLH, cycleIdle, cycleCalc;
    always @(posedge clkRecurse, negedge rst) begin
        if(!rst) begin
            cycle <= 2'b00;
            cycleLH <= 2'b11;
            cycleIdle <= 2'b10;
            cycleCalc <= 2'b01;
        end else if(!cyclePulse) begin
            cycleCalc <= cycleCalc + 1;
            cycleIdle <= cycleIdle + 1;
            cycleLH <= cycleLH + 1;
            cycle <= cycle + 1;
        end   
    end

    // Sample storage
    logic[SampleWidth-1:0] slh, scob, scof;
    logic[$clog2(4*DownSampleDepth)-1:0] addrIn, addrLH, addrBR, addrFR;
    assign sampleClk = clkRecurse;
    // Write sample to memory
    assign sampleWrite = 1'b1;
    assign sampleDataIn = inSample;
    assign sampleAddrIn = addrIn;
    // Read lookahead sample
    assign slh = sampleDataOut1;
    assign sampleAddrOut1 = addrLH;
    // Read forward recursion sample
    assign scof = sampleDataOut2;
    assign sampleAddrOut2 = addrFR;
    // Read backward recursion sample
    assign scob = sampleDataOut3;
    assign sampleAddrOut3 = addrBR;

    // Partial result storage
    logic signed [`OUT_WIDTH-1:0] finF, finB, finResult, finF_delay, finB_delay, partMemB, partMemF;
    logic[$clog2(2*DownResultDepth)-1:0] addrResIn, addrResOutB, addrResOutF, addrResOutF_Temp;
    // Backward result
    assign resClkB = clkDS;
    assign resWriteB = 1'b1;
    assign resDataInB = partMemB;
    assign resAddrInB = addrResIn;
    assign finB_delay = resDataOutB;
    assign resAddrOutB = addrResOutB;
    // Forward result
    assign resClkF = clkDS;
    assign resWriteF = 1'b1;
    assign resDataInF = partMemF;
    assign resAddrInF = addrResIn;
    assign finF_delay = resDataOutF;
    assign resAddrOutF = addrResOutF;

    // Outputs from generate blocks
    logic signed[n_tot:0] forwardResult, backwardResult;

    // Scale results
    logic signed[`OUT_WIDTH-1:0] scaledResB, scaledResF;
    Fxp_To_Fxp #(.n_int_in(n_int), .n_mant_in(n_mant), .n_int_out(0), .n_mant_out(`OUT_WIDTH-1)) ResultScalerB (.in( backwardResult ), .out( scaledResB ) );
    Fxp_To_Fxp #(.n_int_in(n_int), .n_mant_in(n_mant), .n_int_out(0), .n_mant_out(`OUT_WIDTH-1)) ResultScalerF (.in( forwardResult ), .out( scaledResF ) );

    // Addresses for result memory must be delayed
    logic[$clog2(DownResultDepth)-1:0] resBatCnt, resBatCntRev;
    logic[1:0] resCycle;
    localparam resDelay = Recursion_Delay;
    localparam int AAresDelay = resDelay;
    Delay #(.size($clog2(DownResultDepth)), .delay(resDelay)) BatchCnt_Delay (.in(resBatCnt_temp), .clk(clkDS), .out(resBatCnt));
    Delay #(.size($clog2(DownResultDepth)), .delay(resDelay)) BatchCntRev_Delay (.in(resBatCntRev_temp), .clk(clkDS), .out(resBatCntRev)); 
    Delay #(.size(2), .delay(resDelay)) Cycle_Delay (.in(cycle), .clk(clkDS), .out(resCycle)); 

    always @(posedge clkDS) begin
        partMemB <= scaledResB;
        partMemF <= scaledResF;
        addrResIn <= {resBatCnt, resCycle[0]};
        addrResOutB <= {resBatCntRev, !resCycle[0]};
        addrResOutF_Temp <= {resBatCnt, !resCycle[0]};
        finF <= finF_delay;
        finB <= finB_delay;
    end

    Delay #(.size($clog2(2*DownResultDepth)), .delay(1)) test_Delay (.in(addrResOutF_Temp), .clk(clkDS), .out(addrResOutF)); 

    always @(posedge clkRecurse) begin
        addrIn <= {sampBatCnt, cycle};
        addrLH <= {sampBatCntRev, cycleLH};
        addrBR <= {sampBatCntRev, cycleCalc};
        addrFR <= {sampBatCnt, cycleCalc};
    end

    // Register propagation for lookahead recursion is delayed
    logic regProp, regProp_prev, regProp_temp;
    Delay #(.size(1), .delay(RegPropDelay)) RegPropagate_Delay (.in(cyclePulse), .clk(clkRecurse), .out(regProp_temp)); 
    
    always @(posedge clkRecurse) begin
        regProp_prev <= regProp_temp;
        regProp <= regProp_temp || !regProp_prev;
    end

    // Samples must be delayed to work with both clocks
    // NB! Only tested with DSR < 20
    logic[SampleWidth-1:0] slh_d, scof_d, scob_d;
    Delay #(.size(SampleWidth), .delay(SampleDelay)) slh_Delay (.in(slh), .clk(clkRecurse), .out(slh_d));
    Delay #(.size(SampleWidth), .delay(SampleDelay)) scof_Delay (.in(scof), .clk(clkRecurse), .out(scof_d));
    Delay #(.size(SampleWidth), .delay(SampleDelay)) scob_Delay (.in(scob), .clk(clkRecurse), .out(scob_d));
    
    // Generate backward recursion
    LookaheadRecursion #(
        .N(N), .M(M), .DSR(DSR1), .n_int(n_int), .n_mant(n_mant), .lut_size(`MAX_LUT_SIZE), .lut_comb(1), .adders_comb(`COMB_ADDERS) ) AheadRec (
        .inSample(scob_d), .lookaheadSample(slh_d), .clkSample(clkRecurse), .clkResult(clkDS), .rst(rst), .validIn(validCompute), .propagate(regProp), .result(backwardResult) 
    );
    
    // Generate forward recursion
    LookbackRecursion #(
        .N(N), .M(M), .DSR(DSR1), .n_int(n_int), .n_mant(n_mant), .lut_size(`MAX_LUT_SIZE), .lut_comb(1), .adders_comb(`COMB_ADDERS) ) BackRec (
        .inSample(scof_d), .clkSample(clkRecurse), .clkResult(clkDS), .rst(rst), .validIn(validCompute), .result(forwardResult) 
    );

    // Final final result
    FxpPU #(.op(FPU_p::ADD), .n_int(0), .n_mant(`OUT_WIDTH-1)) FINADD (.A(finF), .B(finB), .clk(clkDS), .result(finResult));
    always @(posedge clkDS) begin
        out <= {!finResult[`OUT_WIDTH-1], finResult[`OUT_WIDTH-2:0]};
    end
endmodule

`endif

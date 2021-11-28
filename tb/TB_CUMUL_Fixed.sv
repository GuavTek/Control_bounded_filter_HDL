`include "../sv/TopCumulFix.sv"
`include "../sv/Util.sv"
`include "Util_TB.sv"
//`include "../sv/FixPU.sv"
`include "FixPU_prop.sv"
//`include "FixLUT_prop.sv"
//`include "TopBatchFix_prop.sv"

`include "../sv/Data/Coefficients_Fixedpoint.sv"
`define TestLength 24000
`define T 4.167

`ifndef DEPTH
    `define DEPTH 220
`endif

`ifndef OSR
    `define OSR 1
`endif

`ifndef VERBOSE_LVL
    `define VERBOSE_LVL 2
`endif

`ifndef OUT_FILE
    `define OUT_FILE results_cumul_fix
`endif

module TB_CUMUL_Fixed #() ();
    logic rst;
    logic clk;
    import Coefficients_Fx::*;

    localparam DownSampleDepth = $rtoi($ceil(`DEPTH / `OSR));
    localparam SampleWidth = N*`OSR; 

    // Read input file
    reg[N-1:0] inSample = 0;
    initial begin
        // Open input file
        static int fdi = $fopen("./Data/verilog_signals.csv", "r");
        if (!fdi) begin 
            $error("File input was not opened");
            $stop;
        end
        
        // Prepare first sample
        $fscanf(fdi, "%b,\n", inSample);

        // Wait for reset cycle
        @(negedge rst);
        @(posedge rst);

        if(`VERBOSE_LVL > 0)
            $display("Start reading samples");

        // Read until end of file
        while ($fscanf(fdi, "%b,\n", inSample) > 0) begin
            // Wait for clock cycle
            if(`VERBOSE_LVL > 2)
                $display("Reading sample %b as %d", inSample, inSample);
            @(posedge clk);
        end

        if(`VERBOSE_LVL > 0)
            $display("Done reading samples");
        // Close file
        $fclose(fdi);
        
    end

    // Write output file
    logic[`OUT_WIDTH-1:0] dutResult;
    logic signed[`OUT_WIDTH-1:0] signedResult;
    logic isValid;
    initial begin
        // Open output file
        static string file_path = {"./Data/", `STRINGIFY(`OUT_FILE), ".csv"};
        static int fdo = $fopen(file_path, "w");
        if (!fdo) begin
            $error("File output was not opened");
            $stop;
        end

        // Wait for reset
        @(negedge rst);
        @(posedge rst);

        // Wait for valid data from dut
        @(posedge isValid);

        $display("Start writing results");

        // Write data
        for (int i = 0; i < `TestLength; i++) begin
            // Write only one in OSR number of results
            if (i % `OSR) begin 
                @(posedge clk);
                continue;
            end

            signedResult = {~dutResult[`OUT_WIDTH-1], dutResult[`OUT_WIDTH-2:0]};
            $fwrite(fdo, "%0d, ", signedResult);
            //$fwrite(fdo, "%b;\n", result);
            if (`VERBOSE_LVL > 2)
                $display("Write result %d.\n", i);

            @(posedge clk);
        end

        $display("Done writing results");

        // Close file
        $fclose(fdo);
        
        // End simulation
        $finish;
    end
    
    // Define clock
    initial begin
        clk = 1;
        forever begin
            #(`T/2) clk = ~clk;
        end
    end

    // define reset cycle
    initial begin
        rst = 1;
        repeat(`OSR) @(posedge clk);
        rst = 0;
        repeat(`OSR*6 + 1) @(posedge clk);
        rst = 1;
    end

    localparam out_w = 14;

    // Instantiate DUTs
    Cumulative_Fixed_top #(.depth(`DEPTH), .OSR(`OSR), .n_mant(`MANT_W), .n_int(`EXP_W)) DUT_Cumul ( .rst(rst), .clk(clk), .in(inSample), .out(dutResult), .valid(isValid));
    
    
    // Bind Modules to property checkers
    bind FixPU FixPU_prop #(.op(op), .n_int(n_int), .n_mant(n_mant)) flprop_i (.*);
    //bind FixLUT FixLUT_prop #(.size(size), .fact(fact)) lutprop_i (.*);
    //bind Batch_Fixed_top Batch_Fixed_prop #(.depth(`DEPTH), .OSR(`OSR), .n_int(n_int), .n_mant(n_mant)) batchprop_i (.*);

endmodule
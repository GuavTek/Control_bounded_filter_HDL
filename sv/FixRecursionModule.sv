`ifndef FIXRECURSIONMODULE_SV_
`define FIXRECURSIONMODULE_SV_

`include "CFixPU.sv"
`include "Util.sv"

module FixRecursionModule #(
    parameter   factorR = 0,
                factorI = 0,
                n_int = 8,
                n_mant = 23
) (
    input logic signed[n_int+n_mant:0] inR, inI,
    input logic signed[n_int+n_mant:0] resetValR, resetValI,
    input logic rst, clk,
    output logic signed[n_int+n_mant:0] outR, outI
);
    logic signed[n_int+n_mant:0] prodR, prodI, sumR, sumI, prevR, prevI;
    assign outR = sumR;
    assign outI = sumI;

    CFixPU #(.op(MULT), .n_int(n_int), .n_mant(n_mant)) c1 (.AR(prevR), .AI(prevI), .BR(factorR), .BI(factorI), .clk(clk), .resultR(prodR), .resultI(prodI));
    CFixPU #(.op(ADD), .n_int(n_int), .n_mant(n_mant)) c2 (.AR(prodR), .AI(prodI), .BR(inR), .BI(inI), .clk(clk), .resultR(sumR), .resultI(sumI));

    always_ff @(posedge clk) begin : recurse
        if (!rst) begin
            prevR = resetValR;
            prevI = resetValI;
        end else begin
            prevR = sumR;
            prevI = sumI;
        end
    end

endmodule
`endif
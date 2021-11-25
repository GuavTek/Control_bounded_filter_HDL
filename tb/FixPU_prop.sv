`ifndef FIXPU_PROP_SV_
`define FIXPU_PROP_SV_

`include "../sv/Util.sv"
`include "../sv/FixPU.sv"

module FixPU_prop #(
    parameter   FPU_opcode op = ADD,
    parameter   n_int = 8,
                n_mant = 23
) (
    A, B,
    clk,
    result
    );

    localparam n_tot = n_int + n_mant;
    input logic signed[n_tot:0] A, B;
    input logic clk;
    input logic signed[n_tot:0] result;

    localparam n_mult = 2*n_tot + 1;

    property Adder;
        @(negedge clk) result == A + B;
    endproperty

    property Multiplier;
        @(negedge clk) result == ((n_mult'(A) * n_mult'(B)) >>> n_mant);
    endproperty

    // Verify correct module behaviour
    if (op == ADD) begin
        assert property (disable iff($isunknown(A) || $isunknown(B)) Adder)
        else $display("Wrong FPU result! %f + %f != %f, expecting %f", $itor(A) * 2.0**(-n_mant), $itor(B) * 2.0**(-n_mant), $itor(result) * 2.0**(-n_mant), $itor(A + B) * 2.0**(-n_mant)); 
    end else begin
        assert property (disable iff($isunknown(A) || $isunknown(B)) Multiplier)
        else $display("Wrong FPU result! %f * %f != %f, expecting %f", $itor(A) * 2.0**(-n_mant), $itor(B) * 2.0**(-n_mant), $itor(result) * 2.0**(-n_mant), ($itor(A) * 2.0**(-n_mant)) * ($itor(B) * 2.0**(-n_mant))); 
    end

endmodule

`endif // FPU_PROP_SV_
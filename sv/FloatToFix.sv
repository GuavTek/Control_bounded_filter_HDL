`ifndef FLOATTOFIX_SV_
`define FLOATTOFIX_SV_

`include "Util.sv"

module FloatToFix #(
    parameter   n_int_out = 8, n_mant_out = 23, n_exp_in = 8, n_mant_in = 23,
    type float_t = struct {logic sign; logic[7:0] exp; logic[23:0] mant;}
) (
    in, out
);
    //import Float_p::GetFloatExpBias;
    localparam n_tot_out = n_int_out + n_mant_out;
    input float_t in;
    output logic signed[n_tot_out:0] out;

    localparam n_tot_in = n_exp_in + n_mant_in;
    localparam expBias = GetFloatExpBias(n_exp_in);

    logic[n_mant_in:0] num_in;
    assign num_in = (in.exp == 0) ? {1'b0, in.mant} : {1'b1, in.mant};

    logic signed[n_mant_in+1:0] num_signed;
    assign num_signed = in.sign ? -num_in : num_in;

    logic signed[n_exp_in:0] exponent;
    assign exponent = in.exp - expBias;

    logic signed[n_exp_in+1:0] shift;
    assign shift = n_mant_in - n_mant_out - exponent;

    assign out = (shift < 0) ? num_signed <<< -shift : num_signed >>> shift;

endmodule

`endif
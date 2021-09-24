`ifndef LUT_SV_
`define LUT_SV_

`include "Util.sv"

virtual class calcLUT #(parameter size = 1);
    static function real get(real fact[0:size-1], logic[size-1:0] in);
        real temp = 0.0;
        logic[size:0] j;
        for(j = 0; j < size; j++) begin
            if(in[j] == 1) begin
                temp += fact[j];
            end else begin
                temp -= fact[j];
            end
        end
        get = temp;
    endfunction
endclass //calcLUT

module LUT #(
    parameter       size = 1,
    parameter real  re[0:size-1] = '{default: 0.0},
    parameter real  im[0:size-1] = '{default: 0.0}
) (
    input logic[size-1:0] sel,
    output complex result
);
    // Generate LUT values
    complex mem[2**size-1:0];

    genvar i;
    generate
        for(i = 0; i < 2**size; i++) begin
            complex temp;
            assign temp.r = rtof(calcLUT#(size)::get(re, i));
            assign temp.i = rtof(calcLUT#(size)::get(im, i));
            assign mem[i] = temp;
        end
    endgenerate

    always_comb begin : select
        result = mem[sel];
    end
endmodule

`endif
`ifndef _UTIL_SV_
`define _UTIL_SV_
// Misc utilities used in several modules

typedef enum int { 
    ADD = 0,
    MULT = 1
} FPU_opcode;

// Floored log2
function int signed flog2(real in);
    begin
    if(in <= 0) begin
        $error("Logarithm of 0 or less is not attainable");
        flog2 = 0;
    end else begin
        int signed temp = 0;
        if (in >= 1)
            while(in > 1) begin
                in = in / 2;
                if (in >= 1) temp++;
            end
        else
            while(in < 1) begin
                in = in * 2;
                temp--;
            end
        flog2 = temp;
    end
	end
endfunction

//package float_p;
    `ifndef EXP_W
        `define EXP_W 5
    `endif  // EXP_W
    `ifndef MANT_W
        `define MANT_W 11
    `endif  // MANT_W

    typedef struct packed { 
        logic sign; 
        logic signed[`EXP_W-1:0] exp;
        logic[`MANT_W-1:0] mantis;
    } floatType;

    typedef struct packed {
        floatType r;
        floatType i;
    } complex;

    function floatType rtof(real in);
        begin
        floatType temp;
        int floatBias;
        logic[`MANT_W:0] mant;
        int signed exponent = flog2($abs(in));
        floatBias = 2 ** (`EXP_W - 1) - 1;
        temp.exp = exponent + floatBias;
            
        if (in >= 0)
            temp.sign = 0;
        else
            temp.sign = 1;
            
        mant = ($abs(in) * 2**(`MANT_W-exponent));
        temp.mantis = mant[`MANT_W-1:0];
        rtof = temp;
        end
    endfunction

    function real ftor(floatType in);
        begin
        real tempR;    
        logic[`MANT_W:0] tempF;
        int floatBias = 2 ** (`EXP_W - 1) - 1;

        tempF = {1'b1, in.mantis};
        
        if (in.sign) begin
            tempR = real'(-tempF);
        end else begin
            tempR = real'(tempF);
        end

        ftor = tempR * 2**(in.exp - floatBias - `MANT_W);
        end
    endfunction
//endpackage
`endif  // _UTIL_SV_
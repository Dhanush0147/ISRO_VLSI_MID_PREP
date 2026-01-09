`timescale 1ns / 1ps

module HF_ROM(
    input  wire [5:0]  addr,
    output reg  signed [17:0] coeff
);

always @(*) begin
    case (addr)
        6'd0 : coeff = -18'sd146;
        6'd1 : coeff = 18'sd0;
        6'd2 : coeff = 18'sd166;
        6'd3 : coeff = 18'sd0;
        6'd4 : coeff = -18'sd257;
        6'd5 : coeff = 18'sd0;
        6'd6 : coeff = 18'sd377;
        6'd7 : coeff = 18'sd0;
        6'd8 : coeff = -18'sd534;
        6'd9 : coeff = 18'sd0;
        6'd10 : coeff = 18'sd734;
        6'd11 : coeff = 18'sd0;
        6'd12 : coeff = -18'sd987;
        6'd13 : coeff = 18'sd0;
        6'd14 : coeff = 18'sd1308;
        6'd15 : coeff = 18'sd0;
        6'd16 : coeff = -18'sd1716;
        6'd17 : coeff = 18'sd0;
        6'd18 : coeff = 18'sd2243;
        6'd19 : coeff = 18'sd0;
        6'd20 : coeff = -18'sd2942;
        6'd21 : coeff = 18'sd0;
        6'd22 : coeff = 18'sd3916;
        6'd23 : coeff = 18'sd0;
        6'd24 : coeff = -18'sd5385;
        6'd25 : coeff = 18'sd0;
        6'd26 : coeff = 18'sd7925;
        6'd27 : coeff = 18'sd0;
        6'd28 : coeff = -18'sd13652;
        6'd29 : coeff = 18'sd0;
        6'd30 : coeff = 18'sd41636;
        6'd31 : coeff = 18'sd65536;
        6'd32 : coeff = 18'sd41636;
        6'd33 : coeff = 18'sd0;
        6'd34 : coeff = -18'sd13652;
        6'd35 : coeff = 18'sd0;
        6'd36 : coeff = 18'sd7925;
        6'd37 : coeff = 18'sd0;
        6'd38 : coeff = -18'sd5385;
        6'd39 : coeff = 18'sd0;
        6'd40 : coeff = 18'sd3916;
        6'd41 : coeff = 18'sd0;
        6'd42 : coeff = -18'sd2942;
        6'd43 : coeff = 18'sd0;
        6'd44 : coeff = 18'sd2243;
        6'd45 : coeff = 18'sd0;
        6'd46 : coeff = -18'sd1716;
        6'd47 : coeff = 18'sd0;
        6'd48 : coeff = 18'sd1308;
        6'd49 : coeff = 18'sd0;
        6'd50 : coeff = -18'sd987;
        6'd51 : coeff = 18'sd0;
        6'd52 : coeff = 18'sd734;
        6'd53 : coeff = 18'sd0;
        6'd54 : coeff = -18'sd534;
        6'd55 : coeff = 18'sd0;
        6'd56 : coeff = 18'sd377;
        6'd57 : coeff = 18'sd0;
        6'd58 : coeff = -18'sd257;
        6'd59 : coeff = 18'sd0;
        6'd60 : coeff = 18'sd166;
        6'd61 : coeff = 18'sd0;
        6'd62 : coeff = -18'sd146;
        default: coeff = 18'sd0;
    endcase
end

endmodule

module HF_Filter(
    input  [23:0] HF_in,
    input         clk,
    input         rst,
    input         HF_enable,
    input  [5:0]  HF_addr,
    output [23:0] HF_out
);

    // 63 stages of D flip-flop (HF pipeline)
    wire signed [23:0] stage_q [0:63];

    assign stage_q[0] = HF_in;

    genvar i;
    generate
        for (i = 0; i < 63; i = i + 1) begin : GEN_DFF
            D_FF_N dff_inst (
                clk,          // clock
                rst,          // asynchronous reset
                HF_enable,    // enable
                stage_q[i],   // input to this stage
                stage_q[i+1]  // output of this stage
            );
        end
    endgenerate
    
    reg signed [23:0] mux_out1, mux_out2;

    always @(*) begin
    if(HF_addr != 63)
        mux_out1 = stage_q[HF_addr + 1];
    else
        mux_out1 = 0;
    end
    
    always @(*) begin
        mux_out2 = stage_q[63 - HF_addr];
    end
    
    wire signed [24:0] sum_mux;
    
    assign sum_mux = {mux_out1[23], mux_out1} + {mux_out2[23], mux_out2};
    
    ///////////                 ROM initialize                 /////////////
    wire signed [17:0] coeff;
    HF_ROM inst10 (HF_addr, coeff);
    
    wire signed [24:0] coeff_ext = {{7{coeff[17]}}, coeff}; 
    
    wire signed [49:0] mul_out;
    assign mul_out = sum_mux * coeff_ext;
    
    
    reg  signed [49:0] pre_in;
    wire signed [49:0] CF_out_in;
    
    always @ (posedge clk or negedge rst)
    begin
      if(!rst)
        pre_in <= 50'd0;
      else
        pre_in <= CF_out_in;
    end
    
    assign CF_out_in = pre_in + mul_out;
    
    
    assign HF_out = pre_in[49:26];

endmodule
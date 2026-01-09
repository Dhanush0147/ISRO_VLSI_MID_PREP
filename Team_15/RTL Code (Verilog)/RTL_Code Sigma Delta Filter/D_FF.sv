`timescale 1ns / 1ps

module D_FF_N (
    input        clk,      
    input        rst,    
    input        en,       
    input  [23:0] d_in,    
    output reg [23:0] q
);

    always @(posedge clk or negedge rst) begin
        if (!rst)
            q <= 24'd0;        
        else if (en)
            q <= d_in;         
    end

endmodule


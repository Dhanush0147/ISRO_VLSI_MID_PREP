module cic_comb #(
    parameter int WIDTH = 32
)(
    input  logic                 clk,
    input  logic                 rst,
    input  logic                 ena,
    input  logic [WIDTH-1:0]     data_in,
    output logic [WIDTH-1:0]     data_out
);

    logic [WIDTH-1:0] delay_reg;

    always_ff @(posedge clk) begin
        if (rst) begin
            delay_reg <= '0;
            data_out  <= '0;
        end 
        else if (ena) begin
            data_out  <= delay_reg - data_in;
            delay_reg <= data_in;
        end
    end

endmodule

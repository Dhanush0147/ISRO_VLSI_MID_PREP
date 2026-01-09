`timescale 1 ns / 1 ns

module Filter_Top #(
    parameter int OVERSAMPLE_RATE   = 256,
    parameter int ADC_BITLEN        = 20,
    parameter bit USE_FIR_COMP      = 0,
    parameter int FIR_COMP_ALPHA_8  = 2
)(
    input  logic                   clk,
    input  logic                   rst,

    input  logic                   adc_lvds_pin,
    output logic                   adc_fb_pin,

    output logic [ADC_BITLEN-1:0]  adc_output,
    output logic                   adc_valid
);

    localparam int CIC_BITLEN =
        2 + int'(4 * $clog2(OVERSAMPLE_RATE));

    logic adc_in;

    localparam int CNT_ADC_BITLEN = $clog2(OVERSAMPLE_RATE);

    logic [CNT_ADC_BITLEN-1:0] dec_cnt = 0;
    localparam logic [CNT_ADC_BITLEN-1:0] dec_cmp =
        CNT_ADC_BITLEN'(OVERSAMPLE_RATE - 1);

    logic dec_ena = 0;

    logic [CIC_BITLEN-1:0] cic_inte_data [4:0] = '{default:0};
    logic [CIC_BITLEN-1:0] cic_comb_data [4:0] = '{default:0};

    always_ff @(posedge clk) begin
        adc_in      <= adc_lvds_pin;
        adc_fb_pin  <= adc_lvds_pin;

        dec_cnt     <= dec_cnt + 1;
        dec_ena     <= (dec_cnt == dec_cmp);

        if (rst) begin
            adc_in  <= 0;
            dec_cnt <= 0;
        end
    end

    always_comb begin
        cic_inte_data[0] = CIC_BITLEN'(adc_in);
        cic_comb_data[0] = cic_inte_data[2];
    end

    genvar i;
    generate
        for (i = 0; i < 4; i++) begin : gen_cic
            cic_integrator #(
                .WIDTH(CIC_BITLEN)
            ) integrator (
                .clk      (clk),
                .rst      (rst),
                .ena      (1'b1),
                .data_in  (cic_inte_data[i]),
                .data_out (cic_inte_data[i+1])
            );

            cic_comb #(
                .WIDTH(CIC_BITLEN)
            ) comb (
                .clk      (clk),
                .rst      (rst),
                .ena      (dec_ena),
                .data_in  (cic_comb_data[i]),
                .data_out (cic_comb_data[i+1])
            );
        end
    endgenerate

    logic [CIC_BITLEN-1:0] fir_data;
    logic [CIC_BITLEN-1:0] post_fir_data;

    generate
        if (USE_FIR_COMP) begin : gen_fir
            fir_compensator #(
                .WIDTH   (CIC_BITLEN),
                .ALPHA_8 (FIR_COMP_ALPHA_8)
            ) fir_comp (
                .clk      (clk),
                .rst      (rst),
                .ena      (dec_ena),
                .data_in  (cic_comb_data[2]),
                .data_out (fir_data)
            );
        end
    endgenerate

    always_comb begin
        if (USE_FIR_COMP)
            post_fir_data = fir_data;
        else
            post_fir_data = cic_comb_data[2];
    end
    
    wire [23:0] HF_out;
    
    HF_Filter hf_filt (
    .HF_in(fir_data[23:0]),
    .clk(clk),
    .rst(rst),
    .HF_enable(dec_ena),
    .HF_addr(adc_output[5:0]),
    .HF_out(HF_out)
    );

    always_ff @(posedge clk) begin
        localparam int MAX_VAL = (2**ADC_BITLEN) - 1;

        adc_valid <= dec_ena;

        if (post_fir_data[CIC_BITLEN-1])
            adc_output <= '0;
        else if (post_fir_data > CIC_BITLEN'(MAX_VAL))
            adc_output <= ADC_BITLEN'(MAX_VAL);
        else
            adc_output <= ADC_BITLEN'(post_fir_data);
    end

endmodule

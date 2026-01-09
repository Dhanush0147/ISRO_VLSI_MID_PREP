`timescale 1 ns / 1 ns

module sigma_delta_adc_tb #(
    parameter int OVERSAMPLE_RATE   = 256,
    parameter int ADC_BITLEN        = 20,
    parameter bit USE_FIR_COMP      = 1,
    parameter int FIR_COMP_ALPHA_8  = 2,
    parameter int    USE_DC         = 0,
    parameter bit    OUTPUT_DIGITAL = 0,
    parameter real   DC_VALUE       = 1.67,
    parameter int    DUMP_VCD       = 1,
    parameter int    BCLK           = 12880000,
    parameter int    NUM_CYCLES     = 10,
    parameter real   VCC            = 2.5,
    parameter real   FREQUENCY      = 440.0,
    parameter real   AMPLITUDE      = 1.0,
    parameter real   OFFSET         = 1.25,
    parameter real   FLICKER_AMP    = 0.01
);

    localparam int CLK_NS = 10**9 / (BCLK * 2);
    localparam int NUM_SAMPLES = NUM_CYCLES * (BCLK / FREQUENCY);
    localparam int CAP_FUDGE = 128;
    localparam int PRNG_SEED = 42;

    logic clk;
    logic rst;
    real adc_input;
    logic adc_lvds_pin;
    logic adc_fb_pin;
    real lvds_pin_p;
    real lvds_pin_n;
    real increase;
    real decrease;

    logic [ADC_BITLEN-1:0] adc_output;
    logic adc_valid;

    logic sim_done = 1'b0;
    int sample_count = 0;
    int output_count = 0;
    int expected_outputs = NUM_SAMPLES / OVERSAMPLE_RATE;

    initial begin
        clk = 1'b0;
        forever #(CLK_NS) clk = ~clk;
    end

    // VCD dump
    initial begin
        if (DUMP_VCD) begin
            $dumpfile("sigma_delta_adc.vcd");
            $dumpvars(0, sigma_delta_adc_tb);
        end
    end

    // Simulation control
    initial begin
        wait(sim_done);
        $display("Simulation complete. Output samples: %0d", output_count);
        $finish;
    end
    
    real noise_prev = 0.0;
    
    initial begin
        real phase;
        real base_signal;
        real noise;
        

        rst = 1'b1;
        repeat(5) @(posedge clk);
        rst = 1'b0;
        repeat(5) @(posedge clk);

        for (sample_count = 0; sample_count < NUM_SAMPLES; sample_count++) begin
            phase = 2.0 * 3.14159265359 * FREQUENCY * sample_count / BCLK;
            
            base_signal = USE_DC ? OFFSET : AMPLITUDE * $cos(phase) + OFFSET;
            noise = (FLICKER_AMP * ($random % 100 - 50)) / 3.0;
            noise_prev = 0.3 * noise_prev + 0.7 * noise;
            adc_input = base_signal + noise_prev;

            @(posedge clk);
        end
    end

    // Analog integrator model (LVDS comparator)
    always_comb begin
        increase = (VCC - lvds_pin_n) / CAP_FUDGE;
        decrease = lvds_pin_n / CAP_FUDGE;
    end

    always_ff @(posedge clk) begin
        if (rst) begin
            lvds_pin_p <= 0.0;
            lvds_pin_n <= 0.0;
            adc_lvds_pin <= 1'b0;
        end else begin
            lvds_pin_p <= adc_input;
            lvds_pin_n <= adc_fb_pin ? (lvds_pin_n + increase) : (lvds_pin_n - decrease);
            adc_lvds_pin <= (lvds_pin_p > lvds_pin_n) ? 1'b1 : 1'b0;
        end
    end

    // DUT instantiation
    Filter_Top #(
        .OVERSAMPLE_RATE(OVERSAMPLE_RATE),
        .ADC_BITLEN(ADC_BITLEN),
        .USE_FIR_COMP(USE_FIR_COMP),
        .FIR_COMP_ALPHA_8(FIR_COMP_ALPHA_8)
    ) dut (
        .clk(clk),
        .rst(rst),
        .adc_lvds_pin(adc_lvds_pin),
        .adc_fb_pin(adc_fb_pin),
        .adc_output(adc_output),
        .adc_valid(adc_valid)
    );

    initial begin
        wait(rst == 1'b0);

        while (output_count < expected_outputs) begin
            @(posedge adc_valid) begin
                output_count++;
                if (output_count % 100 == 0) begin
                    $display("[Sample %0d] Output: 0x%06x (%0d)", 
                        output_count, adc_output, adc_output);
                end
            end
        end

        sim_done = 1'b1;
    end

endmodule : sigma_delta_adc_tb
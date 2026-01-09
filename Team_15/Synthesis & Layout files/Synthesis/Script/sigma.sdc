############################################################
# SDC for Filter_Top  (RTL: .sv)  — 6 I/O PORTS ONLY
############################################################

# ---------------- CLOCK ---------------------
# clk = 1 MHz  → period = 1000 ns
create_clock -name clk -period 1000 [get_ports clk]


# ---------------- INPUT DELAYS ---------------
# adc_lvds_pin is your data input
# rst is asynchronous → still give arrival window for STA
set_input_delay  -clock clk 100 [get_ports adc_lvds_pin]
set_input_delay  -clock clk 100 [get_ports addr_hf*]
set_input_delay  -clock clk 100 [get_ports rst]


# ---------------- OUTPUT DELAYS --------------
# These outputs go to next system stage → give same margin
set_output_delay -clock clk 100 [get_ports adc_output*]
set_output_delay -clock clk 100 [get_ports HF_out*]
set_output_delay -clock clk 100 [get_ports adc_valid]

# Feedback pin is also an output → include it too
set_output_delay -clock clk 100 [get_ports adc_fb_pin]


# ---------------- EXCEPTIONS -----------------
# rst is control/reset, not timed → mark as false path
set_false_path -from [get_ports rst]

# small uncertainty margin to avoid ideal timing assumption
set_clock_uncertainty 20 [get_clocks clk]


############################################################
# END
############################################################

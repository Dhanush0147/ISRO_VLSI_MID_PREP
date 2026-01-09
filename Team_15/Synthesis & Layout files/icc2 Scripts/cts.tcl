#Before performing CTS, execute the following command and analyze the report
check_design -checks pre_clock_tree_stage


create_routing_rule clk_rule \
   -widths   { M1 0.23  M2 0.28  M3 0.28 } \
   -spacings { M1 0.23  M2 0.28  M3 0.28 }



#Specify Max fanout
set_app_options -name cts.common_max_fanout -value 30

# set clock target skew and latency
set_clock_tree_options -clocks [all_clocks] -target_latency 0.250 -target_skew 0.030
#set_clock_tree_options -clocks [get_clocks -filter "is_virtual==false"] -target_latency 0.25 -target_skew 0.03

set_clock_routing_rules -clocks [all_clocks] -net_type {internal} -rules clk_rule -min_routing_layer M2 -max_routing_layer M3
set_clock_routing_rules -clocks [all_clocks] -net_type {root}     -rules clk_rule -min_routing_layer M2 -max_routing_layer M3

clock_opt

# Make the logical connection of PG nets for all the standard cells
connect_pg_net -net VDD [get_pins -hier * -filter "name == VDD"]
connect_pg_net -net VSS [get_pins -hier * -filter "name == VSS"]

report_constraints -all_violators
report_clock_tree_options
report_clock_qor
report_qor -summary
report_timing -delay_type min
report_timing -delay_type max

save_block -as cts_done

#################### FLOORPLAN ####################

# SANITY CHECK
check_netlist
check_timing
report_design_mismatch -verbose

################## create shape of Block and proceed with next steps ####################

set_block_pin_constraints -self -allowed_layers {M3 M4} -sides 2
place_pins -self

# fix the ports
set_attribute [get_ports *] physical_status fixed
get_attribute [get_ports *] is_fixed

########Place Macros and Proceed with next steps##########################

save_block -as floorplan_done

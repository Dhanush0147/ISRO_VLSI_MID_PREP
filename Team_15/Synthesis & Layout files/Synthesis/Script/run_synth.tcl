


set TOP_MODULE "Filter_Top"
set RTL_DIR "/home/team_15/filter_interiit/sigma_delta_filter_work/Filter_Design"
set RPT_DIR "/home/team_15/filter_interiit/sigma_delta_filter_work/sigma_rpt"
set OUT_DIR "/home/team_15/filter_interiit/sigma_delta_filter_work/sigma_out"
set SDC_FILE "/home/team_15/filter_interiit/sigma_delta_filter_work/scripts/sigma.sdc"

###################### LIBRARIES ########################

# define .db files MUST BE FIRST
set ss_lib "/home/team_15/tsl18fs120_scl_ss.db"
set ff_lib "/home/team_15/tsl18fs120_scl_ff.db"

# Target → worst corner for setup
set target_library [list $ss_lib]

# Link → everything needed to resolve cells
set link_library   [list "*" $ss_lib $ff_lib] 

#########################################################

# ----- SET OPERATING CONDITION ----
set SS_OC "tsl18fs120_scl_ss"  ; # slow operating condition name
set FF_OC "tsl18fs120_scl_ff"  ; # fast operating condition name




#######################################
# READ RTL FILES and LINK DESIGN

##set rtl_list [glob -nocomplain "$RTL_DIR/*.v"]

##read_file -format verilog $rtl_list


#read_verilog "$RTL_DIR/k_2_inv.v"                                         ## ANALYZE AND read_verilog/read_file are same , use any 1 only

##########################################


##########################################



set_app_var hdlin_sv_enable true

######### ANALYZE  (MUST BEFORE ELABORATE)#######

## for multiple files
#analyze -format verilog $rtl_files

analyze -format sverilog [list \
    $RTL_DIR/Filter_Top.sv \
    $RTL_DIR/cic_comb.sv \
    $RTL_DIR/cic_integrator.sv \
    $RTL_DIR/fir_compensator.sv \
    $RTL_DIR/HF_filter.sv \
    $RTL_DIR/D_FF.sv \
    
]



# for single .v file
#analyze -format verilog "$RTL_DIR/k_2_inv.v"

################################################



# --- Elaborate & Set Current Design ---
elaborate Filter_Top

current_design Filter_Top

# --- Apply SDC Constraints ---

## if using multiple files, always right ,sdc after elaborate and curent_design !!
if {[file exists $SDC_FILE]} {
    read_sdc $SDC_FILE                                  
} else {
    echo "WARNING !! - NO SDC FILE APPLIED"
}

#RTL TO TECHNOLOGY LIUBRARY
link

# use slow corner for SETUP, fast corner for HOLD
set_operating_conditions -max $SS_OC -min $FF_OC

######## COMPILE ######
# --- Synthesis ---

compile_ultra

######################

# --- Name Cleanup ---
change_names -rules verilog -verbose -hier



# --- Reports ---
report_timing  > $RPT_DIR/${TOP_MODULE}_timing.rpt
report_area    > $RPT_DIR/${TOP_MODULE}_area.rpt
report_power   > $RPT_DIR/${TOP_MODULE}_power.rpt
report_qor     > $RPT_DIR/${TOP_MODULE}_qor.rpt

# --- Outputs ---
write -format verilog -hierarchy -output $OUT_DIR/${TOP_MODULE}_syn.v
write -format ddc     -hierarchy -output $OUT_DIR/${TOP_MODULE}.ddc
write_sdf                        $OUT_DIR/${TOP_MODULE}.sdf
write_sdc                        $OUT_DIR/${TOP_MODULE}_out.sdc

###############################################################################
echo "Synthesis complete for design " $TOP_MODULE"

echo "Check reports/ and outputs folders"

## START GUI ( DESIGN VISION) ###
gui_start





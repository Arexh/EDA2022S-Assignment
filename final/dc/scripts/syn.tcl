########################################################################
#   This is a tcl script in dc_shell-t for pre-layout synthesis        #
#   Company:  SUS TECH                                                 #		
#   author:   Wu Peilin                                                #
#   Version   1.0                                                      #
#   Date:     20220601                                                 #
########################################################################

########################################################################
# TCL script for DC to synthesize                                      #
########################################################################
set hdlin_translate_off_skip_text "true"
set verilogout_no_tri             "true"
set default_schematic_options     "-size infinite"
set write_name_nets_same_as_ports "true"
# dc_shell TcL startup script:
set designer "Wu Peilin"
set company  "SUS TECH"

########################################################################
###      1.  setup design files path                                 ###
########################################################################
set proj_path     /home/EDA/eda14/EDA2022S-Assignment/final
set work_path     $proj_path/dc
set rtl_path      $proj_path/rtl
set lib_path      $proj_path/dc/lib
set script_path   $proj_path/dc/scripts
set search_path   "$search_path $work_path $rtl_path $lib_path"
set design_name   risc8

set_app_var target_library sc_max.db
set_app_var link_library   "* sc_max.db"
###      set svf file for formality                                  ###
set_svf $work_path/outputs/$design_name.svf

########################################################################
###      2.  read in verilog code                                    ###
########################################################################
# Set up a work library for this design in a subdirectory:
define_design_lib syn_temp -path ./syn_temp
analyze -work syn_temp -format verilog -vcs "-f $rtl_path/syn.vf"
elaborate -work syn_temp $design_name >> "$work_path/reports/$design_name.read_in"
current_design $design_name

########################################################################
###      3.  set enviroment parameter and compile                    ###
########################################################################
set_operating_conditions typical
set_wire_load_model -name "8000" [all_designs]
set_fix_multiple_port_nets -all -buffer_constants

# sdc constraints
source $script_path/syn.sdc

set_drive      5.0 [all_inputs]
set_load       1.0 [all_outputs]
set_max_fanout 5   [all_inputs]
set_max_transition 2.0 $design_name
set_max_fanout 20 $design_name

set_max_area   8000

# Drop into interactive mode for compile & optimize:
compile

########################################################################
###      4.  report design&lib information                           ###
########################################################################
check_design > "$work_path/reports/$design_name.check"

report_area > $work_path/reports/$design_name.area
report_power > $work_path/reports/$design_name.power
report_timing  > $work_path/reports/$design_name.timing
report_timing -loops >> $work_path/reports/$design_name.timing
report_constraint > $work_path/reports/$design_name.rc
report_constraint -verbose >> $work_path/reports/$design_name.rc
report_constraint -all_violators > $work_path/reports/$design_name.violator

########################################################################
###      5.  Write file for use in other tools                       ###
########################################################################
write -format verilog -hierarchy -output "$work_path/outputs/$design_name.v"
write_sdf -version 2.1 "$work_path/outputs/$design_name.sdf"
write_sdc "$work_path/outputs/$design_name.sdc"
write_sdf "$work_path/outputs/$design_name.sdf"
exit

sh date >> $work_path/outputs/$design_name.date
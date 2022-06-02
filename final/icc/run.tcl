# Script for Lab 1 steps - Data Setup and Basic Flow
#
set_separate_process_options -placement false
#
file delete -force $my_mw_lib
#
############################################################
# Create Milkyway Design Library
############################################################
create_mw_lib $my_mw_lib -open -technology $tech_file \
	-mw_reference_library "$mw_path/sc $mw_path/io $mw_path/ram16x128"

############################################################
# Load the netlist, constraints and controls.
############################################################
import_designs $verilog_file \
	-format verilog \
	-top $top_design

############################################################
# Load TLU+ files
############################################################
set_tlu_plus_files \
	-max_tluplus $tlup_max \
	-min_tluplus $tlup_min \
	-tech2itf_map  $tlup_map

check_library
check_tlu_plus_files
list_libs

read_sdc $sdc_file
check_timing > ./reports/check_timing.rpt
report_timing_requirements > ./reports/timing_requirements.rpt
report_disable_timing > ./reports/report_disable_timing.rpt
report_case_analysis > ./reports/report_case_analysis.rpt
report_clock > ./reports/report_clock.rpt
report_clock -skew > ./reports/report_clock_skew.rpt


source scripts/opt_ctrl.tcl

source scripts/zic_timing.tcl
exec cat zic.timing

remove_ideal_network [get_ports scan_en]

save_mw_cel -as RISC8_data_setup

######################################################################
# Initialize Floorplan
######################################################################
# Create corners and P/G pads and define all pad cell locations:
source -echo scripts/pad_cell_cons.tcl

create_floorplan -core_utilization 0.8 -left_io2core 15.0 -bottom_io2core 15.0 -right_io2core 15.0 -top_io2core 15.0

insert_pad_filler -cell "pfeed10000 pfeed05000 pfeed02000 pfeed01000 pfeed00500 pfeed00200 pfeed00100 pfeed00050 pfeed00010 pfeed00005"

# Connect power ground
source -echo scripts/connect_pg.tcl

create_pad_rings

source -echo scripts/preplace_macros.tcl

source -echo scripts/keepout.tcl

# Build power plan structure
source -echo scripts/pns.tcl

commit_fp_rail

preroute_instances
preroute_standard_cells -fill_empty_rows -remove_floating_pieces

set_pnet_options -complete "METAL4 METAL5"

remove_placement -object_type standard_cell
write_def -version 5.6 -placed -all_vias -blockages  -routed_nets -specialnets -rows_tracks_gcells -output design_data/ORCA.def

save_mw_cel -as RISC8_floorlplaned

############################################################
# Perfom placement and check congestion
############################################################
place_opt
redirect -tee ./reports/place_opt.timing {report_timing}
report_congestion -grc_based -by_layer -routing_stage global 
save_mw_cel -as RISC8_placed

############################################################
# Perfom clock tree synthesis
############################################################
remove_clock_uncertainty [all_clocks]
set_fix_hold [all_clocks]
clock_opt
redirect -tee ./reports/clock_opt.timing {report_timing}
# GUI action only: "Color By Clock Trees"
save_mw_cel -as RISC8_cts

############################################################
# Perfom routing
############################################################
route_opt
report_timing > ./reports/route_opt.timing
report_timing -delay min > ./reports/route_opt_min.timing
report_design -physical
change_names -rules verilog -hierarchy
write_verilog ./results/RISC8.gv
write_stream -format gds -lib_name $my_mw_lib -cells $top_design ./results/RISC8.gds
save_mw_cel -as RISC8_routed
exit

########################################################################
#   This is a tcl script in formality for demo                         #
#   Company:  SUS TECH                                                 #		
#   author:   Wu Peilin                                                #
#   Version   1.0                                                      #
#   Date:     20220601                                                 #
########################################################################

########################################################################
# TCL script for formality                                             #
########################################################################
set designer "Wu Peilin"
set company  "SUS TECH"

set proj_path     /home/EDA/eda14/EDA2022S-Assignment/final
set work_path     $proj_path/fm
set rtl_path      $proj_path/rtl
set ntl_path      $proj_path/dc/outputs
set lib_path      $proj_path/dc/lib
set rpt_path      $proj_path/fm/reports
set search_path   "$search_path $work_path $rtl_path $lib_path"
set design_name   risc8

read_verilog -c r -l WORK -01 $rtl_path/*.v
set hdlin_warn_on_mismatch_message FMR_ELAB-147
set_top r:/WORK/$design_name

read_verilog -c i -l WORK "$ntl_path/$design_name.v"
read_db "$lib_path/sc_max.db"
set_top i:/WORK/$design_name

set verification_failing_point_limit 100

match > $rpt_path/$design_name.rpt
report_unmatched_points >> $rpt_path/$design_name.rpt
verify >> $rpt_path/$design_name.rpt
report_failing_points >> $rpt_path/$design_name.rpt
diagnose >> $rpt_path/$design_name.rpt
report_error_candidates >> $rpt_path/$design_name.rpt
quit


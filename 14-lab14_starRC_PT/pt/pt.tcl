set link_path "* ../lib/sc_max.db"
read_verilog ../icc/results/MY_MULTIPLER.gv
current_design mulitiplier
link
read_parasitics -format SPEF ../starrc/max.spef
read_sdc ../icc/design_data/mulitiplier.sdc
set_propagated_clock [all_clocks]
update_timing -full
check_timing -verbose 
report_analysis_coverage -status_details untested -exclude_untested {constant_disabled false_paths} > ./reports/analysis_coverage.rpt
report_annotated_parasitics -list_not_annotated > ./reports/parasitics.rpt
report_constraint -all_violators -nosplit > ./reports/report_constraints_summery.rpt
report_constraint -all_violators -nosplit -verbose > ./reports/report_constraints_detail.rpt
report_timing -delay_type max > ./reports/report_timing_max.rpt
report_timing -delay_type min > ./reports/report_timing_min.rpt
save_session reports/pt.RISC_CHIP
exit

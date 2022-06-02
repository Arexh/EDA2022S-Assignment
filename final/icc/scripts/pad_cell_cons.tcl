# Create corners and P/G pads
create_cell {cornerll cornerlr cornerul cornerur} pfrelr
create_cell {vss1left vss1right vss1top vss1bottom} pv0i
create_cell {vdd1left vdd1right vdd1top vdd1bottom} pvdi
create_cell {vss2left vss2right vss2top vss2bottom} pv0a
create_cell {vdd2left vdd2right vdd2top vdd2bottom} pvda

# Define corner pad locations
set_pad_physical_constraints -pad_name "cornerul" -side 1
set_pad_physical_constraints -pad_name "cornerur" -side 2
set_pad_physical_constraints -pad_name "cornerlr" -side 3
set_pad_physical_constraints -pad_name "cornerll" -side 4

# Define signal and PG  pad locations

# Left side
set_pad_physical_constraints -pad_name "clk_iopad" -side 1 -order 1
set_pad_physical_constraints -pad_name "rst_n_iopad" -side 1 -order 2
set_pad_physical_constraints -pad_name "nmi_iopad" -side 1 -order 3
set_pad_physical_constraints -pad_name "int_iopad" -side 1 -order 4
set_pad_physical_constraints -pad_name "ready_iopad" -side 1 -order 5
set_pad_physical_constraints -pad_name "scan_in_iopad" -side 1 -order 6
set_pad_physical_constraints -pad_name "scan_en_iopad" -side 1 -order 7
set_pad_physical_constraints -pad_name "scan_mode_iopad" -side 1 -order 8
set_pad_physical_constraints -pad_name "data_in_iopad_7" -side 1 -order 9
set_pad_physical_constraints -pad_name "data_in_iopad_6" -side 1 -order 10
set_pad_physical_constraints -pad_name "data_in_iopad_5" -side 1 -order 11
set_pad_physical_constraints -pad_name "data_in_iopad_4" -side 1 -order 12
set_pad_physical_constraints -pad_name "data_in_iopad_3" -side 1 -order 13
set_pad_physical_constraints -pad_name "data_in_iopad_2" -side 1 -order 14
set_pad_physical_constraints -pad_name "data_in_iopad_1" -side 1 -order 15
set_pad_physical_constraints -pad_name "data_in_iopad_0" -side 1 -order 16

# Top side
set_pad_physical_constraints -pad_name "address_iopad_15" -side 2 -order 1
set_pad_physical_constraints -pad_name "address_iopad_14" -side 2 -order 2
set_pad_physical_constraints -pad_name "address_iopad_13" -side 2 -order 3
set_pad_physical_constraints -pad_name "address_iopad_12" -side 2 -order 4
set_pad_physical_constraints -pad_name "address_iopad_11" -side 2 -order 5
set_pad_physical_constraints -pad_name "address_iopad_10" -side 2 -order 6
set_pad_physical_constraints -pad_name "address_iopad_9" -side 2 -order 7
set_pad_physical_constraints -pad_name "address_iopad_8" -side 2 -order 8
set_pad_physical_constraints -pad_name "address_iopad_7" -side 2 -order 9
set_pad_physical_constraints -pad_name "address_iopad_6" -side 2 -order 10
set_pad_physical_constraints -pad_name "address_iopad_5" -side 2 -order 11
set_pad_physical_constraints -pad_name "address_iopad_4" -side 2 -order 12
set_pad_physical_constraints -pad_name "address_iopad_3" -side 2 -order 13
set_pad_physical_constraints -pad_name "address_iopad_2" -side 2 -order 14
set_pad_physical_constraints -pad_name "address_iopad_1" -side 2 -order 15
set_pad_physical_constraints -pad_name "address_iopad_0" -side 2 -order 16

# Right side
set_pad_physical_constraints -pad_name "data_out_iopad_7" -side 3 -order 1
set_pad_physical_constraints -pad_name "data_out_iopad_6" -side 3 -order 2
set_pad_physical_constraints -pad_name "data_out_iopad_5" -side 3 -order 3
set_pad_physical_constraints -pad_name "data_out_iopad_4" -side 3 -order 4
set_pad_physical_constraints -pad_name "data_out_iopad_3" -side 3 -order 5
set_pad_physical_constraints -pad_name "data_out_iopad_2" -side 3 -order 6
set_pad_physical_constraints -pad_name "data_out_iopad_1" -side 3 -order 7
set_pad_physical_constraints -pad_name "data_out_iopad_0" -side 3 -order 8
set_pad_physical_constraints -pad_name "cycle_iopad"      -side 3 -order 9
set_pad_physical_constraints -pad_name "write_iopad"      -side 3 -order 10
set_pad_physical_constraints -pad_name "ifetch_iopad"     -side 3 -order 11
set_pad_physical_constraints -pad_name "iack_iopad"       -side 3 -order 12
set_pad_physical_constraints -pad_name "ie_iopad"         -side 3 -order 13
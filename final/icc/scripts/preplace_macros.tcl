
# Set pre-defined placement for the PLLs and CLKMUL macros

set_attribute [all_macro_cells] is_fixed false
remove_placement -object_type all

set obj [get_cells {"I_RISC_CORE/I_REG_FILE/REG_FILE_A_RAM"} -all]
set_attribute -quiet $obj origin {404 400}

set obj [get_cells {"I_RISC_CORE/I_REG_FILE/REG_FILE_B_RAM"} -all]
set_attribute -quiet $obj origin {612 400}


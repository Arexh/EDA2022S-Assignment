reset_design

set CLK_PERIOD 8.0

create_clock -period $CLK_PERIOD [get_ports clk]
set_clock_uncertainty -setup 0.4 [get_clocks clk]
set_max_delay  1.0 -to [all_outputs]
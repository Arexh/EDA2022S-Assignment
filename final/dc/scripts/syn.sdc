reset_design

set CLK_PERIOD 4.0

create_clock -period $CLK_PERIOD [get_ports clk]
set_clock_uncertainty -setup 0.3 [get_clocks clk]
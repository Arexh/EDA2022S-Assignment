MODULE_NAME = cnt10
DUT = ./$(MODULE_NAME).v 
TB  = ./$(MODULE_NAME)_tb.v

run: compile simulate

compile:
	vcs -sverilog -debug_all +error+20 timescale.v $(DUT) $(TB) -l com.log

simulate:
	./simv -l sim.log

run_dve:
	dve -vpd ${MODULE_NAME}_tb.vpd &

clean:
	rm -rf *.log  csrc simv simv.daidir ucli.key DVEfiles *vpd

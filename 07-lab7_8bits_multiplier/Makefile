MODULE_NAME = mulitiplier
DUT = ./$(MODULE_NAME).v 
SEED = $(shell date +%s)

run: run_seq run_rand run_manual

run_seq: compile_seq simulate_seq

run_rand: compile_rand simulate_rand

run_manual: compile_manual simulate_manual

compile_seq:
	vcs +v2k -sverilog -debug_all timescale.v $(DUT) ./$(MODULE_NAME)_seq_tb.v -l com.log -o simv_seq

compile_rand:
	vcs +v2k -sverilog -debug_all timescale.v $(DUT) ./$(MODULE_NAME)_rand_tb.v -l com_rand.log -o simv_rand

compile_manual:
	vcs +v2k -sverilog -debug_all timescale.v $(DUT) ./$(MODULE_NAME)_manual_tb.v -l com_manual.log -o simv_manual

simulate_seq:
	./simv_seq -l sim_seq.log

simulate_rand:
	./simv_rand +seed=$(SEED) -l sim_rand.log

simulate_manual:
	./simv_manual +seed=$(SEED) -l sim_manual.log

run_dve_seq:
	dve -vpd ${MODULE_NAME}_seq_tb.vpd &

run_dve_rand:
	dve -vpd ${MODULE_NAME}_rand_tb.vpd &

run_dve_manual:
	dve -vpd ${MODULE_NAME}_manual_tb.vpd &

clean:
	rm -rf *.log csrc simv* simv.daidir ucli.key DVEfiles *vpd

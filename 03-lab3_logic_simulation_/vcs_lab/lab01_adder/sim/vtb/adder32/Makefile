SEED = $(shell date +%s)
CYCLE_NUM = 200

DUT = ./adder32.v 
TB = ./adder32_tb.v
TB_RANDOM = ./adder32_tb_random.v 

# -------- run the simualtion throught the common methods --------
run: run_normal run_random

run_normal: compile_normal simulate_normal

run_random: compile_random simulate_random 

compile_random:
	vcs +v2k -sverilog -debug_all $(DUT) $(TB_RANDOM) -l com_random_$(SEED).log -o simv_random

compile_normal:
	vcs +v2k -sverilog -debug_all $(DUT) $(TB) -l com_random_$(SEED).log -o simv_normal

simulate_random:
	./simv_random +seed=$(SEED) +cycle_num=$(CYCLE_NUM) -l sim_random_$(SEED).log

simulate_normal:
	./simv_normal -l sim_normal_$(SEED).log

run_dve_normal:
	dve -vpd tb_normal.vpd &

run_dve_random:
	dve -vpd tb_random.vpd &

clean:
	@-rm -rf *.log  csrc simv* simv.daidir ucli.key DVEfiles *vpd simv.vdb coverage *.bak *.help

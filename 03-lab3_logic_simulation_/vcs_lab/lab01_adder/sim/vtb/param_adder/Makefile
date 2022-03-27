# Makefile for simulate the param_adder.v

# random seed generation
SEED = $(shell date +%s)

# variable definition
DUT = ./param_adder.v 
TB  = ./param_adder_tb_random.v ./timescale.v

run: compile simulate

compile:
	vcs -M +v2k -debug_all $(DUT) $(TB) -l com_$(SEED).log

simulate:
	./simv +plusargs_save +seed=$(SEED) -l sim_$(SEED).log

run_dve:
	dve -vpd vcdplus.vpd &

clean:
	@-rm -rf *.log  csrc simv simv.daidir ucli.key DVEfiles *vpd

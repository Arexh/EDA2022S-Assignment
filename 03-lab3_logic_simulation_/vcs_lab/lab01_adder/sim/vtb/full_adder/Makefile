# Makefile for simulate the full_adder.v with the simulator VCS

# --------------------------------------------------------------
# Macro variables
RTL  := ./full_adder.v
TB   += ./full_adder_tb.v
SEED ?= $(shell date +%s)

# Target : Dependency
all: compile simulate

compile:
	vcs -sverilog -debug_all timescale.v $(RTL) $(TB) -l com.log

simulate:
	./simv +ntb_random_seed=$(SEED) -l sim.log

run_dve:
	dve -vpd vcdplus.vpd &

clean:
	rm -rf *.log  csrc simv*  *.key *.vpd DVEfiles coverage *.vdb

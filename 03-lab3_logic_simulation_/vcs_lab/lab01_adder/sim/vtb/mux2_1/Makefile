# Makefile for simulate the mux2_1.v with the simulator VCS

all: compile simulate

compile:
	vcs -sverilog -debug_all timescale.v mux2_1.v mux2_1_tb.v -l com.log

simulate:
	./simv -l sim.log

run_dve:
	dve -vpd vcdplus.vpd &

clean:
	rm -rf *.log  csrc simv simv.daidir ucli.key vcdplus.vpd DVEfiles coverage simv.vdb

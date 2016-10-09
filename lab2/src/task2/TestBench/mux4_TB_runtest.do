SetActiveLib -work
comp -include "$dsn\src\task2\mux4.vhd" 
comp -include "$dsn\src\task2\TestBench\mux4_TB.vhd" 
asim +access +r TESTBENCH_FOR_mux4 
wave 
wave -noreg a
wave -noreg b
wave -noreg s
wave -noreg a1
wave -noreg b1
wave -noreg z
wave -noreg z1
wave -noreg errorz1
wave -noreg errorz2
wave -noreg errorz3
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\mux4_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_mux4 

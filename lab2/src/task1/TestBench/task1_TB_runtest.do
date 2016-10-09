SetActiveLib -work
comp -include "$dsn\src\task1\task1.vhd" 
comp -include "$dsn\src\task1\TestBench\task1_TB.vhd" 
asim +access +r TESTBENCH_FOR_task1 
wave 
wave -noreg a1
wave -noreg b1
wave -noreg s1
wave -noreg z11	
wave -noreg z12
wave -noreg error
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\task1_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_task1 

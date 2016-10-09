SetActiveLib -work
comp -include "$dsn\src\task3\variant1.vhd" 
comp -include "$dsn\src\task3\TestBench\variant1_TB.vhd" 
asim +access +r TESTBENCH_FOR_variant1 
wave 
wave -noreg x
wave -noreg y
wave -noreg z
wave -noreg f1
wave -noreg f2
wave -noreg error
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\variant1_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_variant1 

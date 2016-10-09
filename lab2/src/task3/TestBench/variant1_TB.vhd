library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity variant1_tb is
end variant1_tb;

architecture TB_ARCHITECTURE of variant1_tb is
	-- Component declaration of the tested unit
	component variant1
	port(
		x : in STD_LOGIC;
		y : in STD_LOGIC;
		z : in STD_LOGIC;
		f : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal x : STD_LOGIC := '0';
	signal y : STD_LOGIC := '0';
	signal z : STD_LOGIC := '0';
	-- Observed signals - signals mapped to the output ports of tested entity
	signal f1, f2, error : STD_LOGIC;

	-- Add your code here ...

begin
	x <= not x after 2ns;
	y <= not y after 4ns; 
	z <= not z after 8ns;

	-- Unit Under Test port map
	UUT1 : variant1
		port map (
			x => x,
			y => y,
			z => z,
			f => f1
		);
	UUT2 : variant1
		port map (
			x => x,
			y => y,
			z => z,
			f => f2
		);

	-- Add your stimulus here ...
	error <= f1 xor f2;
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_variant1 of variant1_tb is
	for TB_ARCHITECTURE
		for UUT1 : variant1
			use entity work.variant1(variant1);
		end for;
		for UUT2 : variant1
			use entity work.variant1(variant1);
		end for;
	end for;
end TESTBENCH_FOR_variant1;


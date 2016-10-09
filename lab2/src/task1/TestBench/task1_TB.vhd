library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity mux2_tb is
end mux2_tb;

architecture TB_ARCHITECTURE_mux2 of mux2_tb is
	-- Component declaration of the tested unit
	component mux2
	port(
		a1 : in STD_LOGIC;
		b1 : in STD_LOGIC;
		s1 : in STD_LOGIC;
		z1 : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal a1  : STD_LOGIC := '0';
	signal b1  : STD_LOGIC := '0';
	signal s1  : STD_LOGIC := '0';
	-- Observed signals - signals mapped to the output ports of tested entity
	signal z11, z12, error : STD_LOGIC;	

	-- Add your code here ...

begin
	a1 <= not a1 after 2ns;
	b1 <= not b1 after 4ns;
	s1 <= not s1 after 8ns;
	-- Unit Under Test port map
	UUT1 : mux2
		port map (
			a1 => a1,
			b1 => b1,
			s1 => s1,
			z1 => z11
		);
	
		UUT2 : mux2
		port map (
			a1 => a1,
			b1 => b1,
			s1 => s1,
			z1 => z12
		);
		
		error <= z11 xor z12;
	-- Add your stimulus here ...

end TB_ARCHITECTURE_mux2;

configuration TESTBENCH_FOR_mux2 of mux2_tb is
	for TB_ARCHITECTURE_mux2
		for UUT1 : mux2
			use entity work.mux2(behaviordescriptiontask1);
		end for;
		for UUT2 : mux2
			use entity work.mux2(structMux2);
		end for;
	end for;
end TESTBENCH_FOR_mux2;


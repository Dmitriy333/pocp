library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity mux4_tb is
end mux4_tb;

architecture TB_ARCHITECTURE of mux4_tb is
	-- Component declaration of the tested unit
	component mux4
	port(
		a : in STD_LOGIC;
		b : in STD_LOGIC;
		s : in STD_LOGIC;
		a1 : in STD_LOGIC;
		b1 : in STD_LOGIC;
		z : out STD_LOGIC;
		z1 : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal a : STD_LOGIC := '0';
	signal b : STD_LOGIC := '0';
	signal s : STD_LOGIC := '0';
	signal a1 : STD_LOGIC := '0';
	signal b1 : STD_LOGIC := '0';
	-- Observed signals - signals mapped to the output ports of tested entity
	signal z11, z12 : STD_LOGIC;
	signal z21, z22 : STD_LOGIC;
	signal errorz1 : STD_LOGIC; 
	signal errorz2 : STD_LOGIC;	  
	signal errorz3 : STD_LOGIC;
	

begin
   	a <= not a after 2ns;
	b <= not b after 4ns; 
	a1 <= not a1 after 8ns;
	b1 <= not b1 after 16ns;
	s <= not s after 32ns;
	
	-- Unit Under Test port map
	UUT1 : mux4
		port map (
			a => a,
			b => b,
			s => s,
			a1 => a1,
			b1 => b1,
			z => z11,
			z1 => z12
		);
		
	UUT2 : mux4
		port map (
			a => a,
			b => b,
			s => s,
			a1 => a1,
			b1 => b1,
			z => z21,
			z1 => z22
		);
	   errorz1 <= z11 xor z21;
	   errorz2 <= z12 xor z22; 
	   errorz3 <= (z11 xor z21) and (z12 xor z22);
	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_mux4 of mux4_tb is
	for TB_ARCHITECTURE
		for UUT1 : mux4
			use entity work.mux4(behmux4);
		end for;
		for UUT2 : mux4
			use entity work.mux4(StructMux4);
		end for;
	end for;
end TESTBENCH_FOR_mux4;


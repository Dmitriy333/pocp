-------------------------------------------------------------------------------
--
-- Title       : task1
-- Design      : lab2
-- Author      : Dmitry Brashevets
-- Company     : Company
--
-------------------------------------------------------------------------------
--
-- File        : task1.vhd
-- Generated   : Fri Oct  7 17:42:44 2016
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {task1} architecture {task1}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux2 is
		port(
		a1, b1, s1: in std_logic;
		z1: out std_logic
		);
end mux2;

--}} End of automatically maintained section

architecture structMux2 of mux2 is
	component and2 	 
		port(
			 a : in STD_LOGIC;
			 b : in STD_LOGIC;
			 c : out STD_LOGIC
		     );	 
	end component;
component Or2 
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 z : out STD_LOGIC
	    );
end component;
component Inv
	port(
		 a : in STD_LOGIC;
		 z : out STD_LOGIC
	);
end component; 

	signal t1, t2, t3 : std_logic;
begin
	U1: Inv port map (s1, t1);
	U2: and2 port map (a1, t1, t2);
	U3: and2 port map (s1, b1, t3);
	U4: Or2 port map (t2, t3, z1);

end structMux2;

--behavioral description.
architecture BehaviorDescriptionMux2 of mux2 is
begin
	Z1 <= a1 when s1 = '0' else b1;
end BehaviorDescriptionMux2;

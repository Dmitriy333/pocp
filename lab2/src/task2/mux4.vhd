-------------------------------------------------------------------------------
--
-- Title       : mux4
-- Design      : lab2
-- Author      : Dmitry Brashevets
-- Company     : Company
--
-------------------------------------------------------------------------------
--
-- File        : F:\pocp_projects\l1\lab2\src\task2\mux4.vhd
-- Generated   : Sun Oct  9 19:09:54 2016
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
--{entity {mux4} architecture {mux4}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux4 is
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 s : in STD_LOGIC;
		 a1 : in STD_LOGIC;
		 b1 : in STD_LOGIC;
		 z : out STD_LOGIC;
		 z1 : out STD_LOGIC
	     );
end mux4;

--}} End of automatically maintained section

architecture StructMux4 of mux4 is
	component mux2 port (
			a1, b1, s1: in std_logic;
			z1: out std_logic
			);
	end component;
begin

	 U1: mux2 port map (
		a1 => a,
		b1 => b,
		s1 => s,
		z1 => z
		);
	U2: mux2 port map (
		a1 => a1,
		b1 => b1,
		s1 => s,
		z1 => z1
		);
end StructMux4;	

architecture BehMux4 of mux4 is
begin  
	Z <= a when s = '0' else b;
	Z1 <= a1 when s = '0' else b1;
end BehMux4;

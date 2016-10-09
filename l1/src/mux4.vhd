-------------------------------------------------------------------------------
--
-- Title       : mux4
-- Design      : l1
-- Author      : Dmitry Brashevets
-- Company     : Company
--
-------------------------------------------------------------------------------
--
-- File        : mux4.vhd
-- Generated   : Fri Sep 16 19:30:45 2016
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
		 in1 : in STD_LOGIC_VECTOR(1 DOWNTO 0);
		 in2 : in STD_LOGIC_VECTOR(1 DOWNTO 0);
		 s : in STD_LOGIC;
		 z : out STD_LOGIC_VECTOR(1 DOWNTO 0)
	     );
end mux4;

--}} End of automatically maintained section

architecture mux4 of mux4 is
begin
	z<= in1 when s = '0' else in2;
end mux4;

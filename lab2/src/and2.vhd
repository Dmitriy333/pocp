-------------------------------------------------------------------------------
--
-- Title       : and2
-- Design      : lab2
-- Author      : Dmitry Brashevets
-- Company     : Company
--
-------------------------------------------------------------------------------
--
-- File        : and2.vhd
-- Generated   : Fri Oct  7 17:38:10 2016
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
--{entity {and2} architecture {and2}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity and2 is
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 c : out STD_LOGIC
	     );
end and2;

--}} End of automatically maintained section

architecture and2 of and2 is
begin
	 c <= a and b;
end and2;

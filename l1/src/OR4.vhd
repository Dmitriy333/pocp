-------------------------------------------------------------------------------
--
-- Title       : OR4
-- Design      : l1
-- Author      : Dmitry Brashevets
-- Company     : Company
--
-------------------------------------------------------------------------------
--
-- File        : OR4.vhd
-- Generated   : Fri Sep 16 18:51:42 2016
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
--{entity {OR4} architecture {OR4}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR4 is
	 port(
		 A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 C : in STD_LOGIC;
		 D : in STD_LOGIC;
		 Z : out STD_LOGIC
	     );
end OR4;

--}} End of automatically maintained section

architecture OR4 of OR4 is
begin
	 Z <= A or B or C or D;
end OR4;

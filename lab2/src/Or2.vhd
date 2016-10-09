-------------------------------------------------------------------------------
--
-- Title       : Or2
-- Design      : lab2
-- Author      : Dmitry Brashevets
-- Company     : Company
--
-------------------------------------------------------------------------------
--
-- File        : Or2.vhd
-- Generated   : Fri Oct  7 17:41:46 2016
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
--{entity {Or2} architecture {Or2}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Or2 is
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 z : out STD_LOGIC
	     );
end Or2;

--}} End of automatically maintained section

architecture Or2 of Or2 is
begin
	 z <= a or b;
end Or2;

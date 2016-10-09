-------------------------------------------------------------------------------
--
-- Title       : Inv
-- Design      : lab2
-- Author      : Dmitry Brashevets
-- Company     : Company
--
-------------------------------------------------------------------------------
--
-- File        : Inv.vhd
-- Generated   : Fri Oct  7 17:40:26 2016
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
--{entity {Inv} architecture {Inv}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Inv is
	 port(
		 a : in STD_LOGIC;
		 z : out STD_LOGIC
	     );
end Inv;

--}} End of automatically maintained section

architecture Inv of Inv is
begin
	 z <= not a;
end Inv;

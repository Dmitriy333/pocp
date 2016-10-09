-------------------------------------------------------------------------------
--
-- Title       : And3
-- Design      : lab2
-- Author      : Dmitry Brashevets
-- Company     : Company
--
-------------------------------------------------------------------------------
--
-- File        : And3.vhd
-- Generated   : Sun Oct  9 21:07:11 2016
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
--{entity {And3} architecture {And3}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity And3 is
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 c : in STD_LOGIC;
		 z : out STD_LOGIC
	     );
end And3;

--}} End of automatically maintained section

architecture And3 of And3 is
begin

	 z <= a and b and c;

end And3;

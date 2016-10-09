-------------------------------------------------------------------------------
--
-- Title       : task2
-- Design      : l1
-- Author      : Dmitry Brashevets
-- Company     : Company
--
-------------------------------------------------------------------------------
--
-- File        : task2.vhd
-- Generated   : Fri Sep 16 19:02:49 2016
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
--{entity {task2} architecture {task2}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity task2 is
	 port(
		 in1 : in STD_LOGIC;
		 in2 : in STD_LOGIC;
		 in3 : in STD_LOGIC;
		 Q : out STD_LOGIC_VECTOR(1 downto 0)
	     );
end task2;

--}} End of automatically maintained section

architecture task2 of task2 is 
signal result1 : std_logic;
signal result2 : std_logic;
begin
	result1 <= (in1 and in2) or (in3	and (not (in2)));
	result2 <= not (in1 and in2) or (in3	and (not (in2)));
	Q <= result1 & result2;
end task2;

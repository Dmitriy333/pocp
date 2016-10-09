-------------------------------------------------------------------------------
--
-- Title       : mux
-- Design      : l1
-- Author      : Dmitry Brashevets
-- Company     : Company
--
-------------------------------------------------------------------------------
--
-- File        : mux.vhd
-- Generated   : Fri Sep 16 18:35:10 2016
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
--{entity {mux} architecture {mux}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux is
	 port(
		 A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 S : in STD_LOGIC;
		 Z : out STD_LOGIC;
		 P : out STD_LOGIC
	     );
end mux;

--}} End of automatically maintained section

architecture mux of mux is
begin

	 Z <= A when S = '0' else B;
	 P <= A or B or S;
end mux;

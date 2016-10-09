-------------------------------------------------------------------------------
--
-- Title       : variant1
-- Design      : lab2
-- Author      : Dmitry Brashevets
-- Company     : Company
--
-------------------------------------------------------------------------------
--
-- File        : F:\pocp_projects\l1\lab2\src\task3\mux4.vhd
-- Generated   : Sun Oct  9 21:01:16 2016
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
--{entity {variant1} architecture {variant1}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity variant1 is
	 port(
		 x : in STD_LOGIC;
		 y : in STD_LOGIC;
		 z : in STD_LOGIC;
		 f : out STD_LOGIC
	     );
end variant1;

--}} End of automatically maintained section

architecture variant1Struct of variant1 is
component Or2 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 z : out STD_LOGIC
	  );
end component;
component and2 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 c : out STD_LOGIC
		 );
end component;

component Inv port(
		 a : in STD_LOGIC;
		 z : out STD_LOGIC
	     );
end component;

component And3 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 c : in STD_LOGIC;
		 z : out STD_LOGIC
	     );
end component;

signal notX, notY, notZ, t1, t2, t3 : std_logic;

begin
	U1: Inv port map (X, notX);
	U2: Inv port map (Y, notY);
	U3: Inv port map (Z, notZ);
	U4: or2 port map (x, notY, t1);
	U5: and2 port map (t1, z, t2);
	U6: and3 port map (notX, y, notZ, t3);
	U7: or2 port map (t2, t3, f); 

end variant1Struct;

architecture variant1Beh of variant1 is
begin
	 f <= ((not y or x) and z) or (not x and y and not z);
end variant1Beh;

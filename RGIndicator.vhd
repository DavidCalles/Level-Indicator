-- PARKING INDICATOR LAB
--****************************************************
--	Description: Set red/green indicators depending on
--					level values.
--	
--	Inputs: [5:0] levels, switches values
--	
--	Outputs: R, G. Red and green indicators
--***************************************************/

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

-- Entity declaration

entity RGIndicator is

    port(Levels 	: in  std_logic_vector(5 downto 0);     
         R  		: out std_logic;
			G 			: out std_logic);    

end RGIndicator;

-- Architecture definition

architecture Combinational of RGIndicator is

begin
	
   -- Basic Red & Green indicators 
	
   R   <= (Levels(0) and Levels(1) and Levels(2) and Levels(3) and Levels(4) and Levels(5));
	G   <= not(Levels(0) and Levels(1) and Levels(2) and Levels(3) and Levels(4) and Levels(5));

end Combinational; 
 
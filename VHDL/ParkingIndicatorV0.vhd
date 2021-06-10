-- PARKING INDICATOR LAB
--**********************************************************
--	Description:	Check the value of 6 switches, if all
--						are full, red alarm turns on. Else, the
--						green alarm turns on.
--
--	Inputs:	Sw: 6 switches which ork as the level indic.
--
--	Outputs:	Red: Pins 5 of JP2, all busy.
--				Green: Pin 7 of JP2, opposite of red.
--				Segments: Most right 7segments. Counter of the
--						number of busy(1) levels.
--
--	Date:
--
--	David Calles	8  June 2021		First Implementation
--	David Calles	10 June 2021		Comments	
--
--**********************************************************/

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

-- Entity declaration

entity ParkingIndicatorV0 is

    port(Sw    	: in  std_logic_vector(5 downto 0);     
         Red   	: out std_logic;
			Green 	: out std_logic;
			Segments	: out std_logic_vector(6 downto 0));    

end ParkingIndicatorV0;

-- Architecture definition

architecture Indicator of ParkingIndicatorV0 is

--------------------------------------------------------------------------
---------------- COMPONENTS DEFINED IN SEPARATE FILES --------------------
--------------------------------------------------------------------------


-- Get Red-Green indicators (Combinational)
	component RGIndicator
		port(Levels 	: in  std_logic_vector(5 downto 0);     
			  R  			: out std_logic;
			  G 			: out std_logic);    
	end component;
	
-- Count number of busy levels (Behavioral)
	component OnesAdder
		port(binVect  : in std_logic_vector(5 downto 0);     
			  onesVect : out std_logic_vector(3 downto 0));
	end component;

-- Display single seven segments (Behavioral) 	
	component SevenSegments
		port(binNumber  : in std_logic_vector(3 downto 0);     
           segmentLed : out std_logic_vector(6 downto 0));
	end component;
	
--------------------------------------------------------------------------
------------------------- INTERMEDIATE SIGNALS ---------------------------
--------------------------------------------------------------------------
signal redSignal, greenSignal: std_logic;
signal onesCounter  : std_logic_vector(3 downto 0);
signal segmentSignal: std_logic_vector(6 downto 0);

--------------------------------------------------------------------------
-------------------------- ARCHITECTURE LOGIC ----------------------------
--------------------------------------------------------------------------

begin
	
	-- Connections mapping for components

	RGIndicator1: RGIndicator
		port map (SW,
					 redSignal,
					 greenSignal);
	
	OnesAdder1: OnesAdder
		port map (Sw,
					 onesCounter);
					  
	SevenSegments1: SevenSegments
		port map (onesCounter,
					 segmentSignal);

--------------------------------------------------------------------------
-------------------------------- OUTPUTS ---------------------------------
-------------------------------------------------------------------------- 
   -- Basic Red & Green indicators 
	
   Red   <= redSignal;
	Green <= greenSignal;
	
	-- 7 Segments output
	-- Light up with low level	
	
	Segments <= segmentSignal;

end Indicator; 
 
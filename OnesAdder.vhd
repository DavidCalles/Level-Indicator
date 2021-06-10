-- PARKING INDICATOR LAB
--****************************************************
--	Description: Count (sum) the number of 1's in 
--					input. 
--	
--	Inputs: [5:0] levels, switches values
--	
--	Outputs: reg[3:0] count, 4 bit output obtained
--			through behavioural description with the
--			amount of 1's in the input.
--***************************************************/

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

-- Entity declaration

entity OnesAdder is

    port(binVect  : in std_logic_vector(5 downto 0);     
         onesVect : out std_logic_vector(3 downto 0));    

end OnesAdder;

-- Architecture definition

architecture Behavioral of OnesAdder is

begin

	process(binVect)
		variable count : unsigned(3 downto 0) := "0000";
		begin
			 count := "0000";   --initialize count variable.
			 for i in 0 to 5 loop   --check for all the bits.
				  if(binVect(i) = '1') then --check if the bit is '1'
						count := count + 1; --if its one, increment the count.
				  end if;
			 end loop;
			 onesVect <= std_logic_vector(count); --assign the count to output.
	end process;
end;
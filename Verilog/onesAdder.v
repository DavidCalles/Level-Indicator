/****************************************************
*	Description: Count (sum) the number of 1's in 
*					input. 
*	
*	Inputs: [5:0] levels, switches values
*	
*	Outputs: reg[3:0] count, 4 bit output obtained
*			through behavioural description with the
*			amount of 1's in the input.
****************************************************/

module onesAdder( input 	 [5:0] levels,
						output reg[3:0] count);

	integer i; // For variable
	
	// Behavioural description
	always@(levels)
	begin
		 count = 0;  							//Count variable
		 for(i=0; i<6; i=i+1)
			  count = count + levels[i]; 	//Add the bit to the count.
	end

endmodule

/****************************************************
*	Description: Set red/green indicators depending on
*					level values.
*	
*	Inputs: [5:0] levels, switches values
*	
*	Outputs: R, G. Red and green indicators
****************************************************/

module RGIndicator (input [5:0] levels,
						  output 	  R,
										  G); 

// Define architecture
assign R   = &levels;
assign G   = ~&levels;

endmodule
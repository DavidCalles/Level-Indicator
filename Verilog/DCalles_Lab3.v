/**********************************************************
*	Description:	Check the value of 6 switches, if all
*						are full, red alarm turns on. Else, the
*						green alarm turns on.
*
*	Inputs:	Sw: 6 switches which ork as the level indic.
*
*	Outputs:	Red: Pins 5 of JP2, all busy.
*				Green: Pin 7 of JP2, opposite of red.
*				Segments: Most right 7segments. Counter of the
*						number of busy(1) levels.
*
*	Date:
*
*	David Calles	8  June 2021		First Implementation
*	David Calles	10 June 2021		Comments	
*
***********************************************************/

// Top-level Entity
module DCalles_Lab3 (input [5:0] Sw,
						   output 	   Red,
										   Green,
							output[6:0]	Segments); 

// Define architecture

// Declare intermediate signals
wire [5:0] levelsWire;
wire [6:0] segmentsWire;
wire redWire, greenWire;

// Instantiate other blocks

RGIndicator RGIndicator1(Sw,
								 redWire,
								 greenWire); 

onesAdder onesAdder1(Sw,
							levelsWire);	


SevenSegments(levelsWire,
				  segmentsWire);
						 
// Set outputs
assign Red 		= redWire;
assign Green 	= greenWire;
assign Segments= segmentsWire;

endmodule
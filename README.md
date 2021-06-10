# Level-Indicator
The following repository contains both VHDL and Verilog implementations for an DE1-SoC. It emulates the sensing of 6 levels through switches, and indicates how many of them are full through a 7-segments display. It also indicates when there is free space and when the parking levels are all full.

## Inputs
- **Sw[5:0]**, 6 logic inputs indicating if a single level is empty of full.

## Outputs
- **Red**, logic output, will be 1 when all the levels are full (logic 1).
- **Green**, logic output, will be 1 if at least one level is empty (logic 0).
- **Segments[6:0]**, 7 logic outputs indicating the number of full levels counted. This output has the format to be plugged in into to active-low 7-segments display. 

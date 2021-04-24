`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:00:41 11/24/2019
// Design Name:   hamming_decoder_serial
// Module Name:   /home/ansh/Desktop/decoder_serial/tb.v
// Project Name:  decoder_serial
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hamming_decoder_serial
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg [20:0] e;
	reg clk;
	// Outputs
	wire [15:0] op;
	wire [4:0] p;

	// Instantiate the Unit Under Test (UUT)
	hamming_decoder_serial uut (
		.e(e),
		.clk(clk),	
		.op(op), 
		.p(p)
	);

	initial begin
		// Initialize Inputs
		clk=0;
		e = 21'b010100111100001101100;	
		end
      
		always #5 clk=~clk;
endmodule


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:53:11 09/04/2019
// Design Name:   q2
// Module Name:   /home/loay/Desktop/LAB1/q2_tb.v
// Project Name:  LAB1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: q2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_tb;

	// Inputs
reg [15:0] m;
	// Outputs
	wire [20:0] e;
initial #500 $finish;
	// Instantiate the Unit Under Test (UUT)
	mux_hamming uut (
		.m(m), 
		.e(e)
	);

	initial begin
		// Initialize Inputs

		m=16'b0101011110001101;
        end 
		// Add stimulus here

      
endmodule

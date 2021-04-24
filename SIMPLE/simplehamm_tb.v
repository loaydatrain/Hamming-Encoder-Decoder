`timescale 1ns / 1ps

module simplehamm_tb;

	// Inputs
	reg [15:0] m;
	// Outputs
	wire [20:0] e;
	initial #500 $finish;
	// Instantiate the Unit Under Test (UUT)
	simplehamm uut (
		.m(m), 
		.e(e)
	);
	initial begin
		// Initialize Inputs
			m=16'b1111111111111111;
        end 
		// Add stimulus here
endmodule


////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:17:16 11/24/2019
// Design Name:   hamming_clock
// Module Name:   /home/ansh/Desktop/hamming_clk/hamming_tb.v
// Project Name:  hamming_clk
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hamming_clock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hamming_clk_tb;

	// Inputs
	reg [15:0] m;
	reg clk;

	// Outputs
	wire [20:0] e;
	wire [4:0] i;
	initial #500 $finish;

	// Instantiate the Unit Under Test (UUT)
	hamming_clock uut (
		.m(m), 
		.clk(clk), 
		.e(e),
		.i(i)
	);

	initial begin
		// Initialize Inputs
		m = 16'b1111111111111111;
	//0101011110001101
		clk = 0;
	end
	
	always #5 clk=~clk;
      
endmodule



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

module precompute_tb;

	// Inputs
reg [15:0] m;
	// Outputs
	wire [20:0] y;
initial #500 $finish;
	// Instantiate the Unit Under Test (UUT)
	hamming_precompute uut (
		.m(m), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		m=16'b0101011110001101;
        end 
		// Add stimulus here

      
endmodule

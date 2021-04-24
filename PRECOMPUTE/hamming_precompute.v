module hamming_precompute(
	input [15:0] m,
	output [20:0] y
	);
reg a,b,c,d,e;
reg p0,p1,p2,p3,p4;
always @ (m) begin 
 b=m[6]^m[10];
 d=m[7]^m[8];
 p4=m[12]^m[14];
 e=m[9]^m[10];
 a=m[0]^m[3];
 c=m[11]^m[13]^m[15];
 p1=m[2]^m[5]^m[9];
 p2=m[1]^m[2]^m[3];
 p3=m[4]^m[5]^m[6];
 p4=p4^c;
 p0=a^b^c^m[1]^m[4]^m[8];
 p1=p1^a^b^m[12]^m[13];
 p2=p2^d^e^m[14]^m[15];
 p3=p3^d^e;
end

//assigning final parity bits
assign y[0]=p0;
assign y[1]=p1;
assign y[2]=m[0];
assign y[3]=p2;
assign y[4]=m[1];
assign y[5]=m[2];
assign y[6]=m[3];
assign y[7]=p3;
assign y[8]=m[4];
assign y[9]=m[5];
assign y[10]=m[6];
assign y[11]=m[7];
assign y[12]=m[8];
assign y[13]=m[9];
assign y[14]=m[10];
assign y[15]=p4;
assign y[16]=m[11];
assign y[17]=m[12];
assign y[18]=m[13];
assign y[19]=m[14];
assign y[20]=m[15];
endmodule

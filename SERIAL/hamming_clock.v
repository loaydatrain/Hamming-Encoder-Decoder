module hamming_clock(
		input [15:0] m,
		input clk,
		output reg [20:0] e,
		output reg [4:0] i
		);
reg p0,p1,p2,p3,p4;

wire [20:0] temp;

assign temp[0]=p0;
assign temp[1]=p1;
assign temp[2]=m[0];
assign temp[3]=p2;
assign temp[4]=m[1];
assign temp[5]=m[2];
assign temp[6]=m[3];
assign temp[7]=p3;
assign temp[8]=m[4];
assign temp[9]=m[5];
assign temp[10]=m[6];
assign temp[11]=m[7];
assign temp[12]=m[8];
assign temp[13]=m[9];
assign temp[14]=m[10];
assign temp[15]=p4;
assign temp[16]=m[11];
assign temp[17]=m[12];
assign temp[18]=m[13];
assign temp[19]=m[14];
assign temp[20]=m[15];

initial i=1 ;
always @ (clk) begin
if(i==22) begin
e[0]=p0;
e[1]=p1;
e[2]=m[0];
e[3]=p2;
e[4]=m[1];
e[5]=m[2];
e[6]=m[3];
e[7]=p3;
e[8]=m[4];
e[9]=m[5];
e[10]=m[6];
e[11]=m[7];
e[12]=m[8];
e[13]=m[9];
e[14]=m[10];
e[15]=p4;
e[16]=m[11];
e[17]=m[12];
e[18]=m[13];
e[19]=m[14];
e[20]=m[15];

i=1;
end
else begin
if (i==1) p0 =0;
else if (i==2) p1 =0;
else if (i==4) p2 =0;
else if (i==8) p3 =0;
else if (i==16) p4 =0;
else begin
if(i[0]==1) p0=p0^temp[i-1];
if(i[1]==1) p1=p1^temp[i-1];
if(i[2]==1) p2=p2^temp[i-1];
if(i[3]==1) p3=p3^temp[i-1];
if(i[4]==1) p4=p4^temp[i-1];
end
i=i+1;
end
end

endmodule

//0101011110001101

module simplehamm(
	input [15:0] m,
	output reg [20:0] e
	);
reg p0,p1,p2,p3,p4;
always @ (m) begin
	//production of parity bits
	p0=m[0]^( m[1]^( m[3]^( m[4]^( m[6]^( m[8]^( m[10]^( m[11]^( m[13]^(m[15]) ))))))));//
	p1=m[0]^( m[2]^(m[3]^( m[5]^(m[6]^( m[9]^(m[10]^( m[12]^(m[13]))))))));//
	p2=m[1]^( m[2]^( m[3]^(  m[7]^( m[8]^( m[9]^( m[10]^(   m[14]^( m[15]))))))));//
	p3=m[4]^( m[5]^( m[6]^( m[7]^( m[8]^( m[9]^( m[10]))))));//
	p4=m[11]^( m[12]^( m[13]^( m[14]^( m[15]))));//
//assigning the message bits to data and parity
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
	//e is the output transported over the channel
	end
	endmodule

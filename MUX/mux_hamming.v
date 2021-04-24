`timescale 1ns / 1ps
module mux21(a,b,s,y);
	input a,b,s;
	output y;

	assign y=(b&s)|(a&(~s));
endmodule

module mux42(a,b,c,d,s0,s1,y);
	input a,b,c,d,s0,s1;
	output y;
	wire mux1,mux2;
	mux21 one(a,b,s0,mux1);
	mux21 two(c,d,s0,mux2); 
	mux21 three(mux1,mux2,s1,y);
endmodule

module mux83(a,b,c,d,e,f,g,h,s0,s1,s2,y);
	input a,b,c,d,e,f,g,h,s0,s1,s2;
       	output y;
        wire mux1,mux2;
        mux42 one(a,b,c,d,s0,s1,mux1);
        mux42 two(e,f,g,h,s0,s1,mux2);
        mux21 three(mux1,mux2,s2,y);
endmodule

module mux_hamming(
	input [15:0] m,
	output [20:0] e
	);
wire p0,p1,p2,p3,p4,a,b,c,d,f,g,h,i;
wire m4,m0,m1;
assign m4=m[4];
assign m1=m[1];
assign m0=m[0];
	//production of parity bits
	
     //calc p0
    mux83 ux1(m0,~m0,~m0,m0,~m0,m0,m0,~m0,m[1],m[3],m[4],h);
    mux83 ux2(h,~h,~h,h,~h,h,h,~h,m[6],m[8],m[10],i);
    mux83 ux3(i,~i,~i,i,~i,i,i,~i,m[11],m[13],m[15],p0);
    //p0=m0^( m1^( m[3]^( m4^( m[6]^( m[8]^( m[10]^( m[11]^( m[13]^(m[15]) ))))))));//
	
    //calc p1
    mux83 ux5(m0,~m0,~m0,m0,~m0,m0,m0,~m0,m[2],m[3],m[5],f);
    mux83 o(f,~f,~f,f,~f,f,f,~f,m[6],m[9],m[10],g);
    mux42 p(g,~g,~g,g,m[12],m[13],p1);
    //p1=m0^( m[2]^(m[3]^( m[5]^(m[6]^( m[9]^(m[10]^( m[12]^(m[13]))))))));

    //calculating p2
    mux83 t(m1,~m1,~m1,m1,~m1,m1,m1,~m1,m[2],m[3],m[7],c);
    mux83 y(c,~c,~c,c,~c,c,c,~c,m[8],m[9],m[10],d);
    mux42 u(d,~d,~d,d,m[14],m[15],p2);
	//p2=m1^( m[2]^( m[3]^(  m[7]^( m[8]^( m[9]^( m[10]^(   m[14]^( m[15]))))))));
	
    //calculating p3
    mux83 asdf(m4,~m4,~m4,m4,~m4,m4,m4,~m4,m[5],m[6],m[7],b);
    mux83 r(b,~b,~b,b,~b,b,b,~b,m[8],m[9],m[10],p3);
    //p3=m4^( m[5]^( m[6]^( m[7]^( m[8]^( m[9]^( m[10]))))));

    //calculating p4
    mux21 q(m[11],~m[11],m[12],a);
    mux83 w(a,~a,~a,a,~a,a,a,~a,m[13],m[14],m[15],p4);
    //p4=m[11]^( m[12]^( m[13]^( m[14]^( m[15]))));

//assigning the message bits to data and parity
assign e[0]=p0;
assign e[1]=p1;
assign e[2]=m[0];
assign e[3]=p2;
assign e[4]=m[1];
assign e[5]=m[2];
assign e[6]=m[3];
assign e[7]=p3;
assign e[8]=m[4];
assign e[9]=m[5];
assign e[10]=m[6];
assign e[11]=m[7];
assign e[12]=m[8];
assign e[13]=m[9];
assign e[14]=m[10];
assign e[15]=p4;
assign e[16]=m[11];
assign e[17]=m[12];
assign e[18]=m[13];
assign e[19]=m[14];
assign e[20]=m[15];

	//e is the output transported over the channel
	endmodule


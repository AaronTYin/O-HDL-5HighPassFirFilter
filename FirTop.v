/*Top*/
module Fir(reset_n,clk,x_in,y_out);

input reset_n,clk;
input [15:0]x_in;
output [23:0]y_out;

wire [15:0]q1,q2,q3,q4;  
wire [31:0]mout0,mout1,mout2,mout3,mout4; 
wire [34:0]aout1,aout2,aout3,aout4; 

dff16 	D1(.reset_n(reset_n),.clk(clk),.d_in(x_in),.q_out(q1)), 
	D2(.reset_n(reset_n),.clk(clk),.d_in(q1),.q_out(q2)), 
	D3(.reset_n(reset_n),.clk(clk),.d_in(q2),.q_out(q3)),
	D4(.reset_n(reset_n),.clk(clk),.d_in(q3),.q_out(q4));	

mult16 	m0(.outcome(mout0),.a(x_in),.b(16'h0040)), 
	m1(.outcome(mout1),.a(q1),.b(16'h00e0)), 
	m2(.outcome(mout2),.a(q2),.b(16'h0100)), 
	m3(.outcome(mout3),.a(q3),.b(16'h00e0)),
	m4(.outcome(mout4),.a(q4),.b(16'h0040)); 

add32 	a1(.a(mout0),.b(mout1),.out(aout1)),  
      	a2(.a(aout1),.b(mout2),.out(aout2)), 
      	a3(.a(aout2),.b(mout3),.out(aout3)),
	a4(.a(aout3),.b(mout4),.out(aout4));

assign y_out=aout4[23:0];

endmodule


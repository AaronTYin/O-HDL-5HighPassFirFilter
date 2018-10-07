/*Mult16*/
module mult16(outcome,a,b); 

input [15:0] a,b;  
output wire [31:0]outcome; 

wire [30:0] temp0; 
wire [29:0] temp1; 
wire [28:0] temp2; 
wire [27:0] temp3; 
wire [26:0] temp4;  
wire [25:0] temp5; 
wire [24:0] temp6; 
wire [23:0] temp7; 
wire [22:0] temp8; 
wire [21:0] temp9; 
wire [20:0] temp10; 
wire [19:0] temp11; 
wire [18:0] temp12; 
wire [17:0] temp13; 
wire [16:0] temp14; 
wire [15:0] temp15; 

function [15:0] mult16x1; 
input [15:0] operand; 
input sel; 
begin  
   mult16x1=(sel)?(operand):15'b0; 
end 
endfunction 

assign temp15=mult16x1(a,b[0]); 
assign temp14=((mult16x1(a,b[1]))<<1); 
assign temp13=((mult16x1(a,b[1]))<<2); 
assign temp12=((mult16x1(a,b[1]))<<3); 
assign temp11=((mult16x1(a,b[1]))<<4); 
assign temp10=((mult16x1(a,b[1]))<<5); 
assign temp9=((mult16x1(a,b[1]))<<6); 
assign temp8=((mult16x1(a,b[1]))<<7); 
assign temp7=((mult16x1(a,b[1]))<<8); 
assign temp6=((mult16x1(a,b[1]))<<9); 
assign temp5=((mult16x1(a,b[2]))<<10); 
assign temp4=((mult16x1(a,b[3]))<<11); 
assign temp3=((mult16x1(a,b[4]))<<12); 
assign temp2=((mult16x1(a,b[5]))<<13); 
assign temp1=((mult16x1(a,b[6]))<<14); 
assign temp0=((mult16x1(a,b[7]))<<15); 


wire [31:0]out1,c1,d1; 
wire [29:0]out2; 
wire [27:0]out3,c2; 
wire [25:0]out4; 
wire [23:0]out5,c3,d2; 
wire [21:0]out6; 
wire [19:0]out7,c4; 
wire [17:0]out8; 

assign out1=temp0+temp1; 
assign out2=temp2+temp3; 
assign out3=temp4+temp5; 
assign out4=temp6+temp7; 
assign out5=temp8+temp9; 
assign out6=temp10+temp11; 
assign out7=temp12+temp13; 
assign out8=temp14+temp15; 
assign c1=out1+out2; 
assign c2=out3+out4; 
assign c3=out5+out6; 
assign c4=out7+out8; 
assign d1=c1+c2; 
assign d2=c3+c4; 
assign outcome=d1+d2; 

endmodule

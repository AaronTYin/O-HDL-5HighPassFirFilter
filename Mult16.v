/*Mult16*/
module mult16(outcome,a,b); 

input [15:0]a,b;  
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
   mult16x1=(sel)?(operand):15'b0; //sel?true,?mult?operand????0
   //?b????0?????å?0?b???1??????a
end
endfunction 

assign temp15=mult16x1(a,b[0]); 
assign temp14=((mult16x1(a,b[1]))<<1); 
assign temp13=((mult16x1(a,b[2]))<<2); 
assign temp12=((mult16x1(a,b[3]))<<3); 
assign temp11=((mult16x1(a,b[4]))<<4); 
assign temp10=((mult16x1(a,b[5]))<<5); 
assign temp9=((mult16x1(a,b[6]))<<6); 
assign temp8=((mult16x1(a,b[7]))<<7); 
assign temp7=((mult16x1(a,b[8]))<<8); 
assign temp6=((mult16x1(a,b[9]))<<9); 
assign temp5=((mult16x1(a,b[10]))<<10); 
assign temp4=((mult16x1(a,b[11]))<<11); 
assign temp3=((mult16x1(a,b[12]))<<12); 
assign temp2=((mult16x1(a,b[13]))<<13); 
assign temp1=((mult16x1(a,b[14]))<<14); 
assign temp0=((mult16x1(a,b[15]))<<15); 

assign outcome=(temp0+temp1+temp2+temp3+temp4+temp5+temp6+temp7+temp8+temp9+temp10+temp11+temp12+temp13+temp14+temp15)/256; 

endmodule

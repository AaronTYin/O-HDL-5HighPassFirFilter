/*Add32*/
module add32(a,b,out); 

input [31:0]a,b; 
output [34:0]out; 

assign out=a+b; 

endmodule

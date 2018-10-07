/*Dff16*/
module dff16(reset_n,clk,d_in,q_out); 

input reset_n,clk; 
input [15:0]d_in; 
output reg [15:0]q_out;  

always @(posedge clk or negedge reset_n) 
begin 
if(!reset_n) 
	q_out<=16'h0; 
else  
	q_out<=d_in; 
end 

endmodule

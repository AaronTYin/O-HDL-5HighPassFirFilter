module multsim;
reg [15:0]a,b;
wire [31:0]out;

initial 
begin 
a=16'h64;
b=16'd64;
end

mult16 m16(out,a,b);

endmodule

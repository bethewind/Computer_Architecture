module fmac(num1, num2, out, clk);
input[31:0] num1, num2;
input clk;
output[63:0] out;
wire s1,s2;
wire[7:0] e1,e2;
wire[22:0] m1,m2;

assign s1 = num1[31];
assign s2 = num2[31];
assign e1 = num1[30:23];
assign e2 = num2[30:23];
assign m1 = num1[22:0];
assign m2 = num2[22:0];


module nlc(in, a, z);
input [3:0]in;
output a;
output [1:0]z;

assign a = ~(in[3] | in[2] | in[1] | in[0]);
assign z[1] = ~(in[3] | in[2]);
assign z[0] = ~(in[3] | (in[1] & ~in[2]));

endmodule


module bne(a0, a1, a2, a3, a4, a5, a6, a7, y, q);
input a0, a1, a2, a3, a4, a5, a6, a7;
output [2:0]y;
output q;

assign q = a0 & a1 & a2 & a3 & a4 & a5 & a6 & a7;
assign y[0] = (~(a5&~a6)&(a0&a2&a4))|((~(a3&a1))&(~(a1&~a2)&a0));
assign y[1] = a0 & a1 & (~a2 | a3 | a0 & a1);
assign y[2] = a0 & a1 & a2 & a3;

endmodule

module muxlzd(in0, in1, in2, in3, in4, in5, in6, in7, select, out);
input [1:0]in0, in1, in2, in3, in4, in5, in6, in7;
input [2:0]select;
output[1:0]out;
wire [7:0]w1,w2;

assign w1[0] = in0[0];
assign w1[1] = in1[0];
assign w1[2] = in2[0];
assign w1[3] = in3[0];
assign w1[4] = in4[0];
assign w1[5] = in5[0];
assign w1[6] = in6[0];
assign w1[7] = in7[0];
assign w2[0] = in0[1];
assign w2[1] = in1[1];
assign w2[2] = in2[1];
assign w2[3] = in3[1];
assign w2[4] = in4[1];
assign w2[5] = in5[1];
assign w2[6] = in6[1];
assign w2[7] = in7[1];

mux8to1 m1(w1, select, out[0]), m2(w2, select, out[1]);

endmodule

module normalize(m, x, out);
input [31:0]m;
input [4:0]x;
output [22:0]out;
wire [31:0]w1;
wire [4:0]t;
assign t = x-5'd9;
rightshifter32 r1(m, ~t, w1);

assign out = w1[22:0];

endmodule
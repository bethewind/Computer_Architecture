module FA(a1,a2,b1,b2,c1,c2,clk,s,cout);
input a1,a2,b1,b2,c1,c2,clk;
output s,cout;
wire [1:0]w;

assign w[0]=(a1&a2)^(b1&b2)^(c1&c2);
assign w[1]=((a1&a2)&(b1&b2))|((a1&a2)&(c1&c2))|((b1&b2)&(c1&c2));

DFF D1(w[0],clk,s);
DFF D2(w[1],clk,cout);

endmodule
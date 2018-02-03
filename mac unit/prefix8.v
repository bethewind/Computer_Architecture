module prefix8(s, cout, x, y, c);
input[7:0] x,y;input c;
output[7:0] s;output cout;
wire[7:0]p,g,a;
wire[7:0]w1;
wire[10:0]w2;

assign p = x ^ y;
assign g = x & y;
assign a = g | p;
assign w1[0]=c;

//level 1
dot d1(w1[1],g[0],a[0],c);
circle c1(w2[1],w2[2],g[2],a[2],g[1],a[1]);
circle c2(w2[3],w2[4],g[4],a[4],g[3],a[3]);
circle c3(w2[5],w2[6],g[6],a[6],g[5],a[5]);

//level 2
dot d2(w1[2],g[1],a[1],w1[1]);
dot d3(w1[3],w2[1],w2[2],w1[1]);
circle c4(w2[7],w2[8],g[5],a[5],w2[3],w2[4]);
circle c5(w2[9],w2[10],w2[5],w2[6],w2[3],w2[4]);

//level 3
dot d4(w1[4],g[3],a[3],w1[3]);
dot d5(w1[5],w2[3],w2[4],w1[3]);
dot d6(w1[6],w2[7],w2[8],w1[3]);
dot d7(w1[7],w2[9],w2[10],w1[3]);

//level 4
dot d8(cout,g[7],a[7],w1[7]);
assign s = w1 ^ p;

endmodule
module CLA32(s,cout,a,b,cin);
input [31:0]a,b;
input cin;
output [31:0]s;
output cout;
wire [2:0]w;

CLA8 c1(s[7:0],w[0],a[7:0],b[7:0],cin);
CLA8 c2(s[15:8],w[1],a[15:8],b[15:8],w[0]);
CLA8 c3(s[23:16],w[2],a[23:16],b[23:16],w[1]);
CLA8 c4(s[31:24],cout,a[31:24],b[31:24],w[2]);
endmodule
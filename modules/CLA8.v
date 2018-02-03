module CLA8(s,cout,a,b,cin);
input [7:0]a,b;
input cin;
output [7:0]s;
output cout;
wire [7:0]p,g,c;
assign c[0]=cin;
assign p[7:0]=a[7:0]^b[7:0];
assign g=a[7:0]&b[7:0];
assign c[1]=g[0]|(p[0]&cin);
assign c[2]=g[1]|(p[1]&g[0])|(p[1]&p[0]&cin);
assign c[3]=g[2]|(p[2]&g[1])|(p[2]&p[1]&g[0])|(p[2]&p[1]&p[0]&cin);
assign c[4]=g[3]|(p[3]&g[2])|(p[3]&p[2]&g[1])|(p[3]&p[2]&p[1]&g[0])|(p[3]&p[2]&p[1]&p[0]&cin);
assign c[5]=g[4]|(p[4]&g[3])|(p[4]&p[3]&g[2])|(p[4]&p[3]&p[2]&g[1])|(p[4]&p[3]&p[2]&p[1]&g[0])|(p[4]&p[3]&p[2]&p[1]&p[0]&cin);
assign c[6]=g[5]|(p[5]&g[4])|(p[5]&p[4]&g[3])|(p[5]&p[4]&p[3]&g[2])|(p[5]&p[4]&p[3]&p[2]&g[1])|(p[5]&p[4]&p[3]&p[2]&p[1]&g[0])|(p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&cin);
assign c[7]=g[6]|(p[6]&g[5])|(p[6]&p[5]&g[4])|(p[6]&p[5]&p[4]&g[3])|(p[6]&p[5]&p[4]&p[3]&g[2])|(p[6]&p[5]&p[4]&p[3]&p[2]&g[1])|(p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&g[0])|(p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&cin);

assign s[7:0]=p[7:0]^c[7:0];
assign cout=c[7];

endmodule

PADOT D8(g[8],a[8],d[6],d[8]);
PADOT D9(g[9],a[9],d[6],d[9]);
PADOT D10(g[10],a[10],d[6],d[10]);
PADOT D11(g[11],a[11],d[6],d[11]);
PADOT D12(g[12],a[12],d[6],d[12]);
PADOT D13(g[13],a[13],d[6],d[13]);
PADOT D14(g[14],a[14],d[6],d[14]);
PADOT D15(g[15],a[15],d[14],d[15]);
module CLA4(s,cout,a,b,cin);
input [3:0]a,b;
input cin;
output [3:0]s;
output cout;
wire [3:0]p,g,c;

assign c[0]=cin;
assign p[3:0]=a[3:0]^b[3:0];
assign g=a[3:0]&b[3:0];
assign c[1]=g[0]|(p[0]&cin);
assign c[2]=g[1]|(p[1]&g[0])|(p[1]&p[0]&cin);
assign c[3]=g[2]|(p[2]&g[1])|(p[2]&p[1]&g[0])|(p[2]&p[1]&p[0]&cin);
assign s[3:0]=p[3:0]^c[3:0];
assign cout=c[3];

endmodule
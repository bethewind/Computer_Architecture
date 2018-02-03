module prefixadder_16(x,y,c,s,cout);

input [15:0]x,y;
input c;
output [15:0]s;
output cout;
wire [15:0]p,g,a,d;
wire [33:0]w;

assign p=x^y;
assign g=x&y;
assign a=g|p;

PADOT D0(g[0],a[0],c,d[0]);
PADOT D1(g[1],a[1],d[0],d[1]);
PACIRCLE C2w1(g[2],a[2],g[1],a[1],w[0],w[1]);
PADOT D2(w[0],w[1],d[0],d[2]);
PADOT D3(g[3],a[3],d[2],d[3]);
PACIRCLE C4w3(g[4],a[4],g[3],a[3],w[2],w[3]);
PADOT D4(w[2],w[3],d[2],d[4]);
PACIRCLE C5w3(g[5],a[5],w[2],w[3],w[4],w[5]);
PADOT D5(w[4],w[5],d[2],d[5]);
PACIRCLE C6w5(g[6],a[6],g[5],a[5],w[6],w[7]);
PACIRCLE C6w3(w[6],w[7],w[2],w[3],w[8],w[9]);
PADOT D6(w[8],w[9],d[2],d[6]);
PADOT D7(g[7],a[7],d[6],d[7]);
PADOT D8(w[10],w[11],d[6],d[8]);
PADOT D9(w[18],w[19],d[6],d[9]);
PADOT D10(w[20],w[21],d[6],d[10]);
PADOT D11(w[26],w[27],d[6],d[11]);
PADOT D12(w[28],w[29],d[6],d[12]);
PADOT D13(w[30],w[31],d[6],d[13]);
PADOT D14(w[32],w[33],d[6],d[14]);
PADOT D15(g[15],a[15],d[14],d[15]);

PACIRCLE C8w7(g[8],a[8],g[7],a[7],w[10],w[11]);
PACIRCLE C10w9(g[10],a[10],g[9],a[9],w[12],w[13]);
PACIRCLE C12w11(g[12],a[12],g[11],a[11],w[14],w[15]);
PACIRCLE C14w13(g[14],a[14],g[13],a[13],w[16],w[17]);
PACIRCLE C9w7(g[9],a[9],w[10],w[11],w[18],w[19]);
PACIRCLE C10w7(w[12],w[13],w[10],w[11],w[20],w[21]);
PACIRCLE C13w11(g[13],a[13],w[14],w[15],w[22],w[23]);
PACIRCLE C14w11(w[16],w[17],w[14],w[15],w[24],w[25]);
PACIRCLE C11w7(g[11],a[11],w[20],w[21],w[26],w[27]);
PACIRCLE C12w7(w[14],w[15],w[20],w[21],w[28],w[29]);
PACIRCLE C13w7(w[22],w[23],w[20],w[21],w[30],w[31]);
PACIRCLE C14w7(w[24],w[25],w[20],w[21],w[32],w[33]);


assign cout=d[15];
assign s[0]=c^p[0];
assign s[15:1]=d[14:0]^p[15:1];
endmodule
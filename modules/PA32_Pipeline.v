module PA_32(x,y,c,s,cout);

input [31:0]x,y;
input c;
output [31:0]s;
output cout;
wire [31:0]p,g,a,d;
wire [97:0]w;

assign p=x^y;
assign g=x&y;
assign a=g|p;

//STAGE 1

PADOT D0(g[0],a[0],c,d[0]);
PACIRCLE C2w1(g[2],a[2],g[1],a[1],w[0],w[1]);
PACIRCLE C4w3(g[4],a[4],g[3],a[3],w[2],w[3]);
PACIRCLE C6w5(g[6],a[6],g[5],a[5],w[6],w[7]);
PACIRCLE C8w7(g[8],a[8],g[7],a[7],w[10],w[11]);
PACIRCLE C10w9(g[10],a[10],g[9],a[9],w[12],w[13]);
PACIRCLE C12w11(g[12],a[12],g[11],a[11],w[14],w[15]);
PACIRCLE C14w13(g[14],a[14],g[13],a[13],w[16],w[17]);
PACIRCLE C16w15(g[16],a[16],g[15],a[15],w[34],w[35]);
PACIRCLE C18w17(g[18],a[18],g[17],a[17],w[36],w[37]);
PACIRCLE C20w19(g[20],a[20],g[19],a[19],w[38],w[39]);
PACIRCLE C22w21(g[22],a[22],g[21],a[21],w[40],w[41]);
PACIRCLE C24w23(g[24],a[24],g[23],a[23],w[42],w[43]);
PACIRCLE C26w25(g[26],a[26],g[25],a[25],w[44],w[45]);
PACIRCLE C28w27(g[28],a[28],g[27],a[27],w[46],w[47]);
PACIRCLE C30w29(g[30],a[30],g[29],a[29],w[48],w[49]);


//STAGE 2

PADOT D1(g[1],a[1],d[0],d[1]);
PADOT D2(w[0],w[1],d[0],d[2]);
PACIRCLE C5w3(g[5],a[5],w[2],w[3],w[4],w[5]);
PACIRCLE C6w3(w[6],w[7],w[2],w[3],w[8],w[9]);
PACIRCLE C9w7(g[9],a[9],w[10],w[11],w[18],w[19]);
PACIRCLE C10w7(w[12],w[13],w[10],w[11],w[20],w[21]);
PACIRCLE C13w11(g[13],a[13],w[14],w[15],w[22],w[23]);
PACIRCLE C14w11(w[16],w[17],w[14],w[15],w[24],w[25]);
PACIRCLE C17w15(g[17],a[17],w[34],w[35],w[50],w[51]);
PACIRCLE C18w15(w[36],w[37],w[34],w[35],w[52],w[53]);
PACIRCLE C21w19(g[21],a[21],w[38],w[39],w[54],w[55]);
PACIRCLE C22w19(w[40],w[41],w[38],w[39],w[56],w[57]);
PACIRCLE C25w23(g[25],a[25],w[42],w[43],w[58],w[59]);
PACIRCLE C26w23(w[44],w[45],w[42],w[43],w[60],w[61]);
PACIRCLE C29w27(g[29],a[29],w[46],w[47],w[62],w[63]);
PACIRCLE C30w27(w[48],w[49],w[46],w[47],w[64],w[65]);


//STAGE 3

PADOT D3(g[3],a[3],d[2],d[3]);
PADOT D4(w[2],w[3],d[2],d[4]);
PADOT D5(w[4],w[5],d[2],d[5]);
PADOT D6(w[8],w[9],d[2],d[6]);
PACIRCLE C11w7(g[11],a[11],w[20],w[21],w[26],w[27]);
PACIRCLE C12w7(w[14],w[15],w[20],w[21],w[28],w[29]);
PACIRCLE C13w7(w[22],w[23],w[20],w[21],w[30],w[31]);
PACIRCLE C14w7(w[24],w[25],w[20],w[21],w[32],w[33]);
PACIRCLE C19w15(g[19],a[19],w[52],w[53],w[66],w[67]);
PACIRCLE C20w15(w[38],w[39],w[52],w[53],w[68],w[69]);
PACIRCLE C21w15(w[54],w[55],w[52],w[53],w[70],w[71]);
PACIRCLE C22w15(w[56],w[57],w[52],w[53],w[72],w[73]);
PACIRCLE C27w23(g[27],a[27],w[60],w[61],w[74],w[75]);
PACIRCLE C28w23(w[46],w[47],w[60],w[61],w[76],w[77]);
PACIRCLE C29w23(w[62],w[63],w[60],w[61],w[78],w[79]);
PACIRCLE C30w23(w[64],w[65],w[60],w[61],w[80],w[81]);


//STAGE 4

PADOT D7(g[7],a[7],d[6],d[7]);
PADOT D8(w[10],w[11],d[6],d[8]);
PADOT D9(w[18],w[19],d[6],d[9]);
PADOT D10(w[20],w[21],d[6],d[10]);
PADOT D11(w[26],w[27],d[6],d[11]);
PADOT D12(w[28],w[29],d[6],d[12]);
PADOT D13(w[30],w[31],d[6],d[13]);
PADOT D14(w[32],w[33],d[6],d[14]);
PACIRCLE C23w15(g[23],a[23],w[72],w[73],w[82],w[83]);
PACIRCLE C24w15(w[42],w[43],w[72],w[73],w[84],w[85]);
PACIRCLE C25w15(w[58],w[59],w[72],w[73],w[86],w[87]);
PACIRCLE C26w15(w[60],w[61],w[72],w[73],w[88],w[89]);
PACIRCLE C27w15(w[74],w[75],w[72],w[73],w[90],w[91]);
PACIRCLE C28w15(w[76],w[77],w[72],w[73],w[92],w[93]);
PACIRCLE C29w15(w[78],w[79],w[72],w[73],w[94],w[95]);
PACIRCLE C30w15(w[80],w[81],w[72],w[73],w[96],w[97]);


//STAGE 5

PADOT D15(g[15],a[15],d[14],d[15]);
PADOT D16(w[34],w[35],d[14],d[16]);
PADOT D17(w[50],w[51],d[14],d[17]);
PADOT D18(w[52],w[53],d[14],d[18]);
PADOT D19(w[66],w[67],d[14],d[19]);
PADOT D20(w[68],w[69],d[14],d[20]);
PADOT D21(w[70],w[71],d[14],d[21]);
PADOT D22(w[72],w[73],d[14],d[22]);
PADOT D23(w[82],w[83],d[14],d[23]);
PADOT D24(w[84],w[85],d[14],d[24]);
PADOT D25(w[86],w[87],d[14],d[25]);
PADOT D26(w[88],w[89],d[14],d[26]);
PADOT D27(w[90],w[91],d[14],d[27]);
PADOT D28(w[92],w[93],d[14],d[28]);
PADOT D29(w[94],w[95],d[14],d[29]);
PADOT D30(w[96],w[97],d[14],d[30]);
PADOT D31(g[31],a[31],d[14],d[31]);


assign cout=d[31];
assign s[0]=c^p[0];
assign s[31:1]=d[30:0]^p[31:1];
endmodule
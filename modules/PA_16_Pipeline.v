module prefixadder_16(x,y,c,s,cout,clk);

input [15:0]x,y;
input c,clk;
output [15:0]s;
output cout;
wire [15:0]p,g,a,d;
wire [131:0]w;

assign p=x^y;
assign g=x&y;
assign a=g|p;

PADOT D0(g[0],a[0],c,d[0]);

PADOT D1(w[35],w[36],w[34],d[1]);
PADOT D2(w[37],w[38],w[34],d[2]);
PADOT D3(w[69],w[69],w[67],d[3]);
PADOT D4(w[70],w[71],w[67],d[4]);
PADOT D5(w[72],w[73],w[67],d[5]);
PADOT D6(w[74],w[75],w[67],d[6]);
PADOT D7(w[100],w[101],w[99],d[7]);
PADOT D8(w[102],w[103],w[99],d[8]);
PADOT D9(w[104],w[105],w[99],d[9]);
PADOT D10(w[106],w[107],w[99],d[10]);
PADOT D11(w[108],w[109],w[99],d[11]);
PADOT D12(w[110],w[111],w[99],d[12]);
PADOT D13(w[112],w[113],w[99],d[13]);
PADOT D14(w[114],w[115],w[99],d[14]);
PADOT D15(g[15],a[15],d[14],d[15]);

PACIRCLE C2w1(g[2],a[2],g[1],a[1],w[0],w[1]);
PACIRCLE C4w3(g[4],a[4],g[3],a[3],w[2],w[3]);
PACIRCLE C5w3(w[44],w[45],w[42],w[43],w[4],w[5]);
PACIRCLE C6w5(g[6],a[6],g[5],a[5],w[6],w[7]);
PACIRCLE C6w3(w[46],w[47],w[42],w[43],w[8],w[9]);
PACIRCLE C8w7(g[8],a[8],g[7],a[7],w[10],w[11]);
PACIRCLE C10w9(g[10],a[10],g[9],a[9],w[12],w[13]);
PACIRCLE C12w11(g[12],a[12],g[11],a[11],w[14],w[15]);
PACIRCLE C14w13(g[14],a[14],g[13],a[13],w[16],w[17]);
PACIRCLE C9w7(w[52],w[53],w[50],w[51],w[18],w[19]);
PACIRCLE C10w7(w[54],w[55],w[50],w[51],w[20],w[21]);
PACIRCLE C13w11(w[60],w[61],w[58],w[59],w[22],w[23]);
PACIRCLE C14w11(w[62],w[63],w[58],w[59],w[24],w[25]);
PACIRCLE C11w7(w[84],w[85],w[82],w[83],w[26],w[27]);
PACIRCLE C12w7(w[86],w[87],w[82],w[83],w[28],w[29]);
PACIRCLE C13w7(w[88],w[89],w[82],w[83],w[30],w[31]);
PACIRCLE C14w7(w[90],w[91],w[82],w[83],w[32],w[33]);

//STAGE 1
DFF L0(c,clk,w[41]);
DFF L1(d[0],clk,w[34]);
DFF L2(g[1],clk,w[35]);
DFF L3(a[1],clk,w[36])
DFF L4(w[0],clk,w[37]);
DFF L5(w[1],clk,w[38]);
DFF L6(g[3],clk,w[39]);
DFF L7(a[3],clk,w[40]);
DFF L8(w[2],clk,w[42]);
DFF L9(w[3],clk,w[43]);
DFF L10(g[5],clk,w[44]);
DFF L11(a[5],clk,w[45]);
DFF L12(w[6],clk,w[46]);
DFF L13(w[7],clk,w[47]);
DFF L14(g[7],clk,w[48]);
DFF L15(a[7],clk,w[49]);
DFF L16(w[10],clk,w[50]);
DFF L17(w[11],clk,w[51]);
DFF L18(g[9],clk,w[52]);
DFF L19(a[9],clk,w[53]);
DFF L20(w[12],clk,w[54]);
DFF L21(w[13],clk,w[55]);
DFF L22(g[11],clk,w[56]);
DFF L23(a[11],clk,w[57]);
DFF L24(w[14],clk,w[58]);
DFF L25(w[15],clk,w[59]);
DFF L26(g[13],clk,w[60]);
DFF L27(a[13],clk,w[61]);
DFF L28(w[16],clk,w[62]);
DFF L29(w[17],clk,w[63]);

//STAGE 2

DFF L30(w[41],clk,w[64]);
DFF L31(w[34],clk,w[65]);
DFF L32(d[1],clk,w[66]);
DFF L33(d[2],clk,w[67]);
DFF L34(w[39],clk,w[68]);
DFF L35(w[40],clk,w[69]);
DFF L36(w[42],clk,w[70]);
DFF L37(w[43],clk,w[71]);
DFF L38(w[4],clk,w[72]);
DFF L39(w[5],clk,w[73]);
DFF L40(w[8],clk,w[74]);
DFF L41(w[9],clk,w[75]);
DFF L42(w[48],clk,w[76]);
DFF L43(w[49],clk,w[77]);
DFF L44(w[50],clk,w[78]);
DFF L45(w[51],clk,w[79]);
DFF L46(w[18],clk,w[80]);
DFF L47(w[19],clk,w[81]);
DFF L48(w[20],clk,w[82]);
DFF L49(w[21],clk,w[83]);
DFF L51(w[56],clk,w[84]);
DFF L52(w[57],clk,w[85]);
DFF L53(w[58],clk,w[86]);
DFF L54(w[59],clk,w[87]);
DFF L55(w[22],clk,w[88]);
DFF L56(w[23],clk,w[89]);
DFF L57(w[24],clk,w[90]);
DFF L58(w[25],clk,w[91]);

//STAGE 3

DFF L59(w[64],clk,w[92]);
DFF L60(w[65],clk,w[93]);
DFF L61(w[66],clk,w[94]);
DFF L62(w[67],clk,w[95]);
DFF L63(d[3],clk,w[96]);
DFF L64(d[4],clk,w[97]);
DFF L65(d[5],clk,w[98]);
DFF L66(d[6],clk,w[99]);
DFF L67(w[76],clk,w[100]);
DFF L68(w[77],clk,w[101]);
DFF L69(w[78],clk,w[102]);
DFF L70(w[79],clk,w[103]);
DFF L71(w[80],clk,w[104]);
DFF L72(w[81],clk,w[105]);
DFF L73(w[82],clk,w[106]);
DFF L74(w[83],clk,w[107]);
DFF L75(w[26],clk,w[108]);
DFF L76(w[27],clk,w[109]);
DFF L77(w[28],clk,w[110]);
DFF L78(w[29],clk,w[111]);
DFF L79(w[30],clk,w[112]);
DFF L80(w[31],clk,w[113]);
DFF L91(w[32],clk,w[114]);
DFF L92(w[33],clk,w[115]);


//STAGE 4

DFF L93(w[92],clk,w[116]);
DFF L94(w[93],clk,w[117]);
DFF L95(w[94],clk,w[118]);
DFF L96(w[95],clk,w[119]);
DFF L97(w[96],clk,w[120]);
DFF L98(w[97],clk,w[121]);
DFF L99(w[98],clk,w[122]);
DFF L100(w[99],clk,w[123]);
DFF L101(d[7],clk,w[124]);
DFF L102(d[8],clk,w[125]);
DFF L103(d[9],clk,w[126]);
DFF L104(d[10],clk,w[127]);
DFF L105(d[11],clk,w[128]);
DFF L106(d[12],clk,w[129]);
DFF L107(d[13],clk,w[130]);
DFF L108(d[14],clk,w[131]);



assign cout=d[15];
assign s[15:0]=w[131:116]^p[15:0];
endmodule
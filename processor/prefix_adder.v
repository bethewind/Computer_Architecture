`include "black_dot.v"
`include "white_dot.v"
module prefix_adder(x,y,cin,cout,sum);

input [31:0]x,y;
input cin;

output [31:0]sum;
output cout;

wire [31:0]c,g,p,a;
wire [100:0]G;
wire [100:0]A;


assign p= x^y;
assign g= x&y;
assign a= x|y;


//level 1
black_dot l11(g[0],cin,a[0],G[0]);
white_dot l12(g[2],g[1],a[2],a[1],G[1],A[1]);
white_dot l13(g[4],g[3],a[4],a[3],G[2],A[2]);
white_dot l14(g[6],g[5],a[6],a[5],G[3],A[3]);
white_dot l15(g[8],g[7],a[8],a[7],G[4],A[4]);
white_dot l16(g[10],g[9],a[10],a[9],G[5],A[5]);
white_dot l17(g[12],g[11],a[12],a[11],G[6],A[6]);
white_dot l18(g[14],g[13],a[14],a[13],G[7],A[7]);
white_dot l19(g[16],g[15],a[16],a[15],G[8],A[8]);
white_dot l110(g[18],g[17],a[18],a[17],G[9],A[9]);
white_dot l111(g[20],g[19],a[20],a[19],G[10],A[10]);
white_dot l112(g[22],g[21],a[22],a[21],G[11],A[11]);
white_dot l113(g[24],g[23],a[24],a[23],G[12],A[12]);
white_dot l114(g[26],g[25],a[26],a[25],G[13],A[13]);
white_dot l115(g[28],g[27],a[28],a[27],G[14],A[14]);
white_dot l116(g[30],g[31],a[30],a[31],G[15],A[15]);


//level 2
black_dot l21(g[1],G[0],a[1],G[16]);
black_dot l22(G[1],G[0],A[1],G[17]);
white_dot l23(g[5],G[2],a[5],A[2],G[18],A[18]);
white_dot l24(G[3],G[2],A[3],A[2],G[19],A[19]);
white_dot l25(g[9],G[4],a[9],A[4],G[20],A[20]);
white_dot l26(G[5],G[4],A[5],A[4],G[21],A[21]);
white_dot l27(g[13],G[6],a[13],A[6],G[22],A[22]);
white_dot l28(G[7],G[6],A[7],A[6],G[23],A[23]);
white_dot l29(g[17],G[8],a[17],A[8],G[24],A[24]);
white_dot l210(G[9],G[8],A[9],A[8],G[25],A[25]);
white_dot l211(g[21],G[10],a[21],A[10],G[26],A[26]);
white_dot l212(G[11],G[10],A[11],A[10],G[27],A[27]);
white_dot l213(g[25],G[12],a[25],A[12],G[28],A[28]);
white_dot l214(G[13],G[12],A[13],A[12],G[29],A[29]);
white_dot l215(g[29],G[14],a[29],A[14],G[30],A[30]);
white_dot l216(G[15],G[14],A[15],A[14],G[31],A[31]);


//level 3
black_dot l31(g[3],G[17],a[3],G[32]);
black_dot l32(G[2],G[17],A[2],G[33]);
black_dot l33(G[18],G[17],A[18],G[34]);
black_dot l34(G[19],G[17],A[19],G[35]);
white_dot l35(g[11],G[21],a[11],A[21],G[36],A[36]);
white_dot l36(G[6],G[21],A[6],A[21],G[37],A[37]);
white_dot l37(G[22],G[21],A[22],A[21],G[38],A[38]);
white_dot l38(G[23],G[21],A[23],A[21],G[39],A[39]);
white_dot l39(g[19],G[25],a[19],A[25],G[40],A[40]);
white_dot l310(G[10],G[25],A[10],A[25],G[41],A[41]);
white_dot l311(G[26],G[25],A[26],A[25],G[42],A[42]);
white_dot l312(G[27],G[25],A[27],A[25],G[43],A[43]);
white_dot l313(g[25],G[29],a[25],A[29],G[44],A[44]);
white_dot l314(G[14],G[29],A[14],A[29],G[45],A[45]);
white_dot l315(G[30],G[29],A[30],A[29],G[46],A[46]);
white_dot l316(G[31],G[29],A[31],A[29],G[47],A[47]);





//level 4
black_dot l41(g[7],G[35],a[7],G[48]);  //changed value from 47 to 48 
black_dot l42(G[4],G[35],A[4],G[49]);
black_dot l43(G[20],G[35],A[20],G[50]);
black_dot l44(G[21],G[35],A[21],G[51]);
black_dot l45(G[36],G[35],A[36],G[52]);
black_dot l46(G[37],G[35],A[37],G[53]);
black_dot l47(G[38],G[35],A[38],G[54]);
black_dot l48(G[39],G[35],A[39],G[55]);
white_dot l49(g[23],G[43],a[23],A[43],G[56],A[56]);
white_dot l410(G[12],G[43],A[15],A[43],G[57],A[57]);
white_dot l411(G[28],G[43],A[28],A[43],G[58],A[58]);
white_dot l412(G[29],G[43],A[29],A[43],G[59],A[59]);
white_dot l413(G[44],G[43],A[44],A[43],G[60],A[60]);
white_dot l414(G[45],G[43],A[45],A[43],G[61],A[61]);
white_dot l415(G[46],G[43],A[46],A[43],G[62],A[62]);
white_dot l416(G[47],G[43],A[47],A[43],G[63],A[63]);


//level 5
black_dot l51(g[15],G[55],a[15],G[64]);
black_dot l52(G[8],G[55],A[8],G[65]);
black_dot l53(G[24],G[55],A[24],G[66]);
black_dot l54(G[25],G[55],A[25],G[67]);
black_dot l55(G[40],G[55],A[40],G[68]);
black_dot l56(G[41],G[55],A[41],G[69]);
black_dot l57(G[42],G[55],A[42],G[70]);
black_dot l58(G[43],G[55],A[43],G[71]);
black_dot l59(G[56],G[55],A[56],G[72]);
black_dot l510(G[57],G[55],A[57],G[73]);
black_dot l511(G[58],G[55],A[58],G[74]);
black_dot l512(G[59],G[55],A[59],G[75]);
black_dot l513(G[60],G[55],A[60],G[76]);
black_dot l514(G[61],G[55],A[61],G[77]);
black_dot l515(G[62],G[55],A[62],G[78]);
black_dot l516(G[63],G[55],A[63],G[79]);



//level 6
black_dot l61(g[31],G[78],a[31],G[80]);


assign sum[0]= p[0]^cin;
assign sum[1]= p[1]^G[0];
assign sum[2]= p[2]^G[16];
assign sum[3]= p[3]^G[17];
assign sum[4]= p[4]^G[32];
assign sum[5]= p[5]^G[33];
assign sum[6]= p[6]^G[34];
assign sum[7]= p[7]^G[35];
assign sum[8]= p[8]^G[48];
assign sum[9]= p[9]^G[49];
assign sum[10]= p[10]^G[50];
assign sum[11]= p[11]^G[51];
assign sum[12]= p[12]^G[52];
assign sum[13]= p[13]^G[53];
assign sum[14]= p[14]^G[54];
assign sum[15]= p[15]^G[55];
assign sum[16]= p[16]^G[64];
assign sum[17]= p[17]^G[65];
assign sum[18]= p[18]^G[66];
assign sum[19]= p[19]^G[67];
assign sum[20]= p[20]^G[68];
assign sum[21]= p[21]^G[69];
assign sum[22]= p[22]^G[70];
assign sum[23]= p[23]^G[71];
assign sum[24]= p[24]^G[72];
assign sum[25]= p[25]^G[73];
assign sum[26]= p[26]^G[74];
assign sum[27]= p[27]^G[75];
assign sum[28]= p[28]^G[76];
assign sum[29]= p[29]^G[77];
assign sum[30]= p[30]^G[78];
assign sum[31]= p[31]^G[79];
assign cout= G[80];

endmodule // prefix_adder

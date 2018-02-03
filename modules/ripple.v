module ripple(s,cout,a,b,c);

input [31:0]a,b;
input c;
wire [31:0]cin;
output [31:0]s;
output cout;

adder a0(s[0],cin[1],a[0],b[0],c);
adder a1(s[1],cin[2],a[1],b[1],cin[1]);
adder a2(s[2],cin[3],a[2],b[2],cin[2]);
adder a3(s[3],cin[4],a[3],b[3],cin[3]);
adder a4(s[4],cin[5],a[4],b[4],cin[4]);
adder a5(s[5],cin[6],a[5],b[5],cin[5]);
adder a6(s[6],cin[7],a[6],b[6],cin[6]);
adder a7(s[7],cin[8],a[7],b[7],cin[7]);
adder a8(s[8],cin[9],a[8],b[8],cin[8]);
adder a9(s[9],cin[10],a[9],b[9],cin[9]);
adder a10(s[10],cin[11],a[10],b[10],cin[10]);
adder a11(s[11],cin[12],a[11],b[11],cin[11]);
adder a12(s[12],cin[13],a[12],b[12],cin[12]);
adder a13(s[13],cin[14],a[13],b[13],cin[13]);
adder a14(s[14],cin[15],a[14],b[14],cin[14]);
adder a15(s[15],cin[16],a[15],b[15],cin[15]);
adder a16(s[16],cin[17],a[16],b[16],cin[16]);
adder a17(s[17],cin[18],a[17],b[17],cin[17]);
adder a18(s[18],cin[19],a[18],b[18],cin[18]);
adder a19(s[19],cin[20],a[19],b[19],cin[19]);
adder a20(s[20],cin[21],a[20],b[20],cin[20]);
adder a21(s[21],cin[22],a[21],b[21],cin[21]);
adder a22(s[22],cin[23],a[22],b[22],cin[22]);
adder a23(s[23],cin[24],a[23],b[23],cin[23]);
adder a24(s[24],cin[25],a[24],b[24],cin[24]);
adder a25(s[25],cin[26],a[25],b[25],cin[25]);
adder a26(s[26],cin[27],a[26],b[26],cin[26]);
adder a27(s[27],cin[28],a[27],b[27],cin[27]);
adder a28(s[28],cin[29],a[28],b[28],cin[28]);
adder a29(s[29],cin[30],a[29],b[29],cin[29]);
adder a30(s[30],cin[31],a[30],b[30],cin[30]);
adder a31(s[31],cout,a[31],b[31],cin[31]);


endmodule
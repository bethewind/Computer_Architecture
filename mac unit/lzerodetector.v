module lzerodetector(m, num, all);
input [31:0]m;
output [4:0]num;
output all;

wire [7:0]a;
wire [1:0]z[7   :0];
wire [2:0]t;
wire q;

nlc n7(m[3:0], a[7], z[7]);
nlc n6(m[7:4], a[6], z[6]);
nlc n5(m[11:8], a[5], z[5]);
nlc n4(m[15:12], a[4], z[4]);
nlc n3(m[19:16], a[3], z[3]);
nlc n2(m[23:20], a[2], z[2]);
nlc n1(m[27:24], a[1], z[1]);
nlc n0(m[31:28], a[0], z[0]);

muxlzd m1(z[0], z[1], z[2], z[3], z[4], z[5], z[6], z[7], t, num[1:0]);

bne b1(a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], t, q);

assign num[4:2] = t;

endmodule 
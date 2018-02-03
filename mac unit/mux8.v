module mux8(e1, e2, select, out);
input [7:0]e1, e2;
input select;
ouptput [7:0]out;

mux m0(e1[0], e2[0], ~select, out[0]);
mux m1(e1[1], e2[1], ~select, out[1]);
mux m2(e1[2], e2[2], ~select, out[2]);
mux m3(e1[3], e2[3], ~select, out[3]);
mux m4(e1[4], e2[4], ~select, out[4]);
mux m5(e1[5], e2[5], ~select, out[5]);
mux m6(e1[6], e2[6], ~select, out[6]);
mux m7(e1[7], e2[7], ~select, out[7]);

endmodule
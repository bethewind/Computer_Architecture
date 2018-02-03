module MUX16(in,select,out);
input [15:0]in;
input [3:0]select;
output out;
wire [3:0]w;


MUX4 M1(in[3:0],select[1:0],w[0]);
MUX4 M2(in[7:4],select[1:0],w[1]);
MUX4 M3(in[11:8],select[1:0],w[2]);
MUX4 M4(in[15:12],select[1:0],w[3]);

MUX4 M5(w[3:0],select[3:2],out);


endmodule

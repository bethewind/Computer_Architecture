module MUX32(in,select,out);
input [31:0]in;
input [4:0]select;
output out;
wire [1:0]w;


MUX16 M1(in[15:0],select[3:0],w[0]);
MUX16 M2(in[31:16],select[3:0],w[1]);
MUX M3(w[0],w[1],select[4],out);

endmodule

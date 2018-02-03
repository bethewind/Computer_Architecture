module MUX8(in1,in2,select,out);
input [4:0]in1;
input [2:0]in2;
input [2:0]select;
output out;

wire [1:0]w;
wire [3:0]k;
assign k[3]=in1[4];
assign k[2:0]=in2[2:0];


MUX4 M1(k[3:0],select[1:0],w[0]);
MUX4 M2(in1[3:0],select[1:0],w[1]);
MUX M3(w[0],w[1],select[2],out);

endmodule
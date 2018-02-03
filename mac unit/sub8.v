module sub8(e1, e2, sign, out);
input[7:0] e1, e2;
output[7:0] out;
output sign;

wire[7:0] negated,w1;
wire c1;
assign negated = ~e2;
prefix8 P1(w1, c1, 8'b1, negated, 1'b0);
prefix8 P2(out, sign, w1, e1, c1);

endmodule
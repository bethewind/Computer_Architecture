module test(x, out);
input [2:0]x;
output [3:0]out;
reg [3:0]r[7:0];

initial begin
r[0] = 4'd0;
r[1] = 4'd1;
r[2] = 4'd2;
r[3] = 4'd3;
r[4] = 4'd4;
r[5] = 4'd5;
r[6] = 4'd6;
r[7] = 4'd7;
end

assign out = r[x];

endmodule
module Select(x,y,w);
input [63:0]x;
input [2:0]y;
output reg [7:0]w;
wire [7:0]Inter[7:0];

assign Inter[0] = x[63:56];
assign Inter[1] = x[55:48];
assign Inter[2] = x[47:40];
assign Inter[3] = x[39:32];
assign Inter[4] = x[31:24];
assign Inter[5] = x[23:16];
assign Inter[6] = x[15:8];
assign Inter[7] = x[7:0];
always @(*)
begin
w <= Inter[y];
end
endmodule
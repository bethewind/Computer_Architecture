module dff(d,clk,q);
input d, clk;
output reg q;

always @ (posedge clk)
begin
q <= d;
end
endmodule

module dff_16(d,clk,q);
input [15:0]d;
input clk;
output reg [15:0]q;

always @ (posedge clk)
begin
q <= d;
end
endmodule	


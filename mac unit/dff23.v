module dff23(d,clk,q);
input [22:0]d;
input clk;
output reg [22:0]q;

always @ (posedge clk)
begin
q <= d;
end
endmodule	

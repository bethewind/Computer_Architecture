module RightShiftRot_32_tb();
reg rotate,clk;
reg [31:0]in;
output [31:0]out;
reg [4:0]select;

RightShiftRot_32 RSR1(in,rotate,select,out,clk);
initial
begin
#0
in=32'b11110000000000000000000000000001;
select=5'b11001;
clk=0;
rotate=0;
#1 in=32'b11111;rotate=1;select=5'd5;
#1 in=32'b1111111;rotate=0;select=5'd5;
end

always #1 clk=~clk;
initial
begin
 $monitor($time,"  in-%b  select- %b  rotate - %b  clk - %b out- %b",in,select,rotate,clk,out);
end
always #15 $finish;

endmodule
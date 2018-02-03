module fpadd_tb();
reg[31:0]a,b;
reg clk;
output [31:0]out;

fpadd F1(a,b,clk,out);
initial 
begin

a=32'b01000000000101011100001010001111;
b=32'b00111111101010111000010100011111;
clk=0;
end

always #1 clk=~clk;

initial 
begin 
$monitor ($time, "  A- %b B - %b clk - %b out-%b ",a,b,clk,out);

#20 $finish;

end


endmodule
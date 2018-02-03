module AM_tb();
reg [11:0]x;
output y;
output [7:0]word;
output [2:0]counter;

Cache  d1(x,y,word,counter);
initial
begin
x = 12'b000000001111;
#4
x = 12'b000000000011;
#8
x = 12'b000000000111;
end

initial
begin
	$monitor("\nhit/miss: %b\nword: %b\ncounter: %b\n",y,word,counter);
end
endmodule
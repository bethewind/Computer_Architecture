module DM_tb();
reg [21:0]x;
output y;
output [7:0]word;

Cache d1(x,y,word);
initial
begin
x = 22'b0000000010011010011111;
#1
x = 22'b0000000010011010011100;
#3
x = 22'b0000000010011010011111;

end

initial
begin
	$monitor($time, " %b  %b ",y,word);
end
endmodule
module lzdtb();
reg [31:0]m;
output [4:0]num;
output all;

lzerodetector l(m, num, all);
initial
begin
m=23'b01000110011001100110010;
end

initial
begin
$monitor("num - %b", num);
end
endmodule
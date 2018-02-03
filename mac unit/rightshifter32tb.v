module rightshifter32tb();
reg [31:0]m1;
reg [4:0]shift;
output [31:0]out;

rightshifter32 r(m1, shift, out);
initial
begin
m1=23'b10011001100110011001100;
shift=5'd3;
end

initial
begin
$monitor("in - %b\nut - %b", m1, out);
end
endmodule
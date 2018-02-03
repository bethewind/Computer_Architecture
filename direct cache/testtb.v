module testtb();
reg [2:0]x;
output [3:0]out;

test T(x, out);
initial
begin
x=3'd4;
end

initial
begin
$monitor("out - %b", out);
end
endmodule
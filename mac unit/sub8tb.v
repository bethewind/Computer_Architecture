module sub8tb();
reg[7:0] e1, e2;
output[7:0] out;
output sign;

sub8 s(e1,e2, sign, out);
initial
begin
e1=8'b01111110;
e2=8'b01111011;
end

initial
begin
$monitor("Out - %b sign - %b", out, sign);
end
endmodule
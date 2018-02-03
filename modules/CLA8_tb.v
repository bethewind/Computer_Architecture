module CLA8_tb();
reg [7:0]a,b;
reg cin;
output [7:0]s;
output cout;

CLA8 c1(s,cout,a,b,cin);

initial
begin

a=8'b11111111;
b=8'b01010101;
cin=1;
end

initial
begin
$monitor($time," sum-%b cout-%b %b %b %b",s,cout,a,b,cin);
end
endmodule
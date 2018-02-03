module CLA8_tb();
reg [31:0]a,b;
reg cin;
output [31:0]s;
output cout;

CLA32 c1(s,cout,a,b,cin);

initial
begin

a=32'b11111111;
b=32'b01010101;
cin=1;
end

initial
begin
$monitor($time," sum-%d cout-%d %d %d %d",s,cout,a,b,cin);
end
endmodule
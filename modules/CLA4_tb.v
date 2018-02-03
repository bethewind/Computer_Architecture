module CLA4_tb();
reg [3:0]a,b;
reg cin;
output [3:0]s;
output cout;

CLA4 c1(s,cout,a,b,cin);
initial
begin

a=4'b1010;
b=4'b0111;
cin=1;
end

initial
begin

$monitor($time," %b %b %b %b %b",s,cout,a,b,cin);

end
endmodule
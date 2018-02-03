module adder_tb();
reg a,b,cin;
output s,cout;

adder a1(s,cout,a,b,cin);

initial 
begin
a=1;
b=1;
cin=1;
end

initial
begin 
$monitor($time," %b %b %b %b %b",s,cout,a,b,cin);

end
initial 
begin
a=1;
b=0;
cin=1;
end

initial
begin 
$monitor($time," %b %b %b %b %b",s,cout,a,b,cin);

end
endmodule
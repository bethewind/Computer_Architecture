module prefixadder_16_tb();
reg [15:0]a,b;
reg c;
output [15:0]s;
output cout;

prefixadder_16 P1(a,b,c,s,cout);


initial
begin

assign a=16'b10101100;
assign b=16'b11010000;
assign c=0;

end

initial
begin

$monitor($time,"\na - %d\nb - %d\nc - %d\nsum - %d\ncout - %b",a,b,c,s,cout);

end
endmodule
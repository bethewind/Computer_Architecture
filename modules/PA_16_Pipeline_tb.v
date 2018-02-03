module prefixadder_16_tb();
reg [15:0]a,b;
reg c,clk;
output [15:0]s;
output cout;

prefixadder_16 P1(a,b,c,s,cout,clk);


initial
begin

a=16'b1111111011101001;
b=16'b1101001111111001;
c=0;
clk=0;

end
always #100 clk=~clk;


always #100 $monitor($time,"   a - %b  b  - %b   c - %b  sum - %b   cout - %b clock - %b\n",a,b,c,s,cout,clk);
always #1000 $finish;
endmodule
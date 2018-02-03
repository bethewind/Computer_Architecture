module PA_32_tb();
reg [31:0]a,b;
reg c;
output [31:0]s;
output cout;

PA_32 P1(a,b,c,s,cout);


initial
begin

assign a=32'b1010111011101001001010110010101;
assign b=32'b1010110101000100011101010000000;
assign c=0;

end

initial
begin

$monitor($time,"\na - %d\nb - %d\nc - %d\nsum - %d\ncout - %b",a,b,c,s,cout);

end
endmodule
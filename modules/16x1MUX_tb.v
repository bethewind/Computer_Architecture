module MUX16_tb();
reg [15:0]in;
reg [3:0]select;
output out;

MUX16 M1(in,select,out);
initial 
begin
in=16'b0000;
select=4'b00;
end

always #1 select=select+1;
always #16 in=in+1;

initial
begin 
$monitor($time,"  IN - %b  select - %b  OUT - %b", in,select,out);
#64 $finish;
end

endmodule
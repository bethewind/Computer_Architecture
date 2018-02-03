module MUX8_tb();
reg [4:0]in1;
reg [2:0]in2;
reg [2:0]select;
output out;

MUX8 M1(in1,in2,select,out);
initial 
begin
in1=5'b10101;
in2=3'bzzz;
select=3'b000;
end

always #1 select=select+1;

initial
begin 
$monitor($time,"  IN - %b%b  select - %b  OUT - %b", in1,in2,select,out);
#64 $finish;
end

endmodule
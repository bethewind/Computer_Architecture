module MUX32_tb();
reg [31:0]in;
reg [4:0]select;
output out;

MUX32 M1(in,select,out);
initial 
begin
in=32'b0000;
select=5'b00;
end

always #1 select=select+1;
always #32 in=in+1;

initial
begin 
$monitor($time,"  IN - %b  select - %b  OUT - %b", in,select,out);
#128 $finish;
end

endmodule
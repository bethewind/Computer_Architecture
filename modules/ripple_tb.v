module ripple_tb();

reg [31:0]a,b,cin;
output [31:0]s;
output cout;
reg c;


ripple r1(s,cout,a,b,c);
initial
begin
    
    assign a=32'b1111;
    assign b=32'b1101;
    assign c=1;
end

initial
begin
    $monitor($time," %d %d %d %d %d",s,cout,a,b,c);
end

endmodule
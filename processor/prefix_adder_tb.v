module prefix_adder_tb();
reg [31:0]a,b;
//reg cin;
wire [31:0]s;
wire cout;

prefix_adder a0(a,b,1,cout,s);

initial
begin
a=32'd10;
b=32'd20;
//cin=0;
end

initial
begin
$monitor($time,":%d %d %d %d",a,b,s,cout);
end

endmodule

module multiplier_tb();
reg [31:0]x,y;
wire [63:0]s;


multiplier a0(x,y,s);

initial
begin
x=32'd5;
y=32'd100;
end

initial
begin
$monitor(":%d %d %d",x,y,s);
end

endmodule

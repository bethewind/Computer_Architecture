module cla32tb();
reg [31:0]a,b;
reg cin,clk;
wire [31:0]s;
wire cout;
cla32 f0(cout,s,a,b,cin,clk);

initial
begin
$monitor("time=",$time," sum=%d\tcout=%d\t",s,cout);
end


initial
begin
clk=0;
a=32'd100;
b=32'd200;
cin=1'd0;
#10
a=32'd400;
b=32'd500;
cin=1'd0;
#10
a=32'd40;
b=32'd50;
cin=1'd0;
#10
a=32'd21;
b=32'd30;
cin=1'd0;
#10
a=32'd20;
b=32'd50;
cin=1'd0;
#10
a=32'd21;
b=32'd20;
cin=1'd0;
#10
a=32'd44;
b=32'd51;
cin=1'd0;
#10
a=32'd21;
b=32'd50;
cin=1'd0;

end

 always begin
 #5 clk = ~clk; // Toggle clock every 5 ticks
 end
endmodule

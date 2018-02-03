

module faddsub_tb();

reg     clk;
reg     [31:0] input_a;
  reg     [31:0] input_b;
  

  output    [31:0] output_z;

multiplierfpm fpm(input_a,input_b,clk,output_z);



initial 
begin
        input_a=32'b00111111000000000000000000000000;
        input_b=32'b00111111111000001100010010011100;
        clk=0;



#30 $finish;
end

always #1 clk=~clk;


initial
begin
$monitor($time,"a=%b,b=%b,c=%b,clk=%b\n",input_a,input_b,output_z,clk);
end


endmodule









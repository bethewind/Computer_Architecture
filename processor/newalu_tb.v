module ALU_tb();

wire reg[63:0]a2,a3,a4,a5,a6;
reg [31:0]b2,b3,b4,b5,b6,out1,out0;
wire [63:0]out3,out4,out5,out6,out2;
//reg [4:0]opcode;
wire [63:0]OUT,L11,L12,L13,L21,L01,L02,L03,L04,L05,L06,L07,L08,L09,L010,L011;	

reg clk;
initial
begin
clk<=0;
end
always #1 clk=~clk;

//x^2,x^4,x^6,x^8,x^10 calculation

ALU at0(out0,out0,5'b00111,clk,a2);  //power 2
ALU at1(a2[31:0],a2[31:0],5'b00111,clk,a3);		//power 4
ALU at2(a2[31:0],a3[31:0],5'b00111,clk,a4);		//power 6
ALU at3(a3[31:0],a3[31:0],5'b00111,clk,a5);		//power 8
ALU at4(a5[31:0],a2[31:0],5'b00111,clk,a6);		//power 10

//taylor series till first 6 terms\

//term 2,3,4,5,6
ALU t1(a2[31:0],b2,5'b0111,clk,out2);
ALU t2(a3[31:0],b3,5'b0111,clk,out3);
ALU t3(a4[31:0],b4,5'b0111,clk,out4);
ALU t4(a5[31:0],b5,5'b0111,clk,out5);
ALU t5(a6[31:0],b6,5'b0111,clk,out6);

//subtraction of terms
ALU l11(out1,out2[31:0],5'b0110,clk,L11);
ALU l12(out3[31:0],out4[31:0],5'b0110,clk,L12);
ALU l13(out5[31:0],out6[31:0],5'b0110,clk,L13);

//addition of L11 and L12
ALU l21(L11[31:0],L12[31:0],5'b0101,clk,L21);

//addition of L21 and L13
ALU l31(L13[31:0],L21[31:0],5'b0101,clk,OUT);

initial
begin
	out1=32'b00111111100000000000000000000000; 		//1
	out0=32'b00111110111010000101011010010110;      //0.45378  (26 deg=0.4537 rad)

	b2=32'b10111111000000000000000000000000;		//(-1/2!)  =  -0.5

	b3=32'b00111101001010101010101010101011;		//(1/4!)  =  0.041666668

	
	b4=32'b10111010101101100000101100010100;        // (-1/6!)  =  -0.001388889

	
	b5=32'b00110111110100000000110011010001;	    //(1/8!)  =  0.0000248015

	
	b6=32'b10110100100100111111001001110111;	    //(-1/10!)  =   -0.00000027557
end	

initial	
begin
$monitor($time,"sin(26')=%b\n",OUT[31:0]);
#300 $finish;
end 	

endmodule // ALU_tb


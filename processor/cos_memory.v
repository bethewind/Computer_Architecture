
`include "alu_32bit.v"


module cosx();

reg [63:0] register[16:0];
output reg[63:0] temp;
wire [63:0] OUT;
reg clk;

//*********************Register File*******************

initial
begin
	register[0] = 64'b00111110111010000101011010010110;           //1
	register[1] = 64'b00111111100000000000000000000000;           //0.45378  (26 deg=0.4537 rad)
	register[2]=64'b0;
	register[3]=64'b0;
	register[4]=64'b0;
	register[5]=64'b0;
	register[6]=64'b0;
	register[7]=64'b10111111000000000000000000000000;           //(-1/2!)  =  -0.5
	register[8]=64'b00111101001010101010101010101011;           //(1/4!)  =  0.041666668
	register[9]=64'b10111010101101100000101100010100;           // (-1/6!)  =  -0.001388889
	register[10]=64'b00110111110100000000110011010001;           //(1/8!)  =  0.0000248015
	register[11]=64'b10110100100100111111001001110111;           //(-1/10!)  =   -0.00000027557
	register[12]=64'b0;
	register[13]=64'b0;
	register[14]=64'b0;
	register[15]=64'b0;
	register[16]=64'b0;
	clk<=0;
end	


reg [23:0] mem[15:0];

//*********************Instruction Memory*******************
   
initial
begin
	mem[0]=24'b000000000000111000100001;			//FMULT R0,R0,R2    PC-0001
	mem[1]=24'b000100001000111000110010;			//FMULT R2,R2,R3    PC-0010
	mem[2]=24'b000000001100111001000011;			//FMULT R2,R3,R4    PC-0011
	mem[3]=24'b000110001100111001010100;			//FMULT R3,R3,R5    PC-0100
	mem[4]=24'b001010001000111001100101;			//FMULT R5,R2,R6    PC-0101
	mem[5]=24'b000100011100111011000110;			//FMULT R2,R7,R12    PC-0110
	mem[6]=24'b000110100000111011010111;			//FMULT R3,R8,R13    PC-0111
	mem[7]=24'b001000100100111011101000;			//FMULT R4,R9,R14    PC-1000
	mem[8]=24'b001010101000111011111001;			//FMULT R5,R10,R15    PC-1001
	mem[9]=24'b001100101100111100001010;			//FMULT R6,R11,R16    PC-1010
	mem[10]=24'b000010110000110000101011;			//FSUB R1,R12,R2    PC-1011
	mem[11]=24'b011010111000110000111100;			//FSUB R13,R14,R3    PC-1100
	mem[12]=24'b011111000000110001001101;			//FSUB R15,R16,R4    PC-1101
	mem[13]=24'b000100001100101001011110;			//FSUB R2,R3,R5    PC-1110
	mem[14]=24'b001000010100101001101111;			//FSUB R4,R5,R6    PC-1111
	
end



always #1 clk=~clk;


//Reading Instruction By Instruction
	genvar i;
generate
	for(i=0; i<15; i=i+1)
	begin
		ALU Ai(register[mem[i][23:19]][31:0],register[mem[i][18:14]][31:0],mem[i][13:9],clk,OUT);
	always @(OUT) begin register[mem[i][8:4]] <= OUT;
			$display(" reg1 - %b  reg2  -  %b     opcode  -  %b ",register[mem[i][23:19]][31:0],register[mem[i][18:14]][31:0],mem[i][13:9]);
			end

	end
endgenerate


initial
begin
$monitor ("\n*****************  cos(26 deg) = %b ***********************\n",register[6][31:0]);
#200 $finish;
end
endmodule
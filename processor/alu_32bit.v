 `timescale 1ns / 1ps
`include "multiplier.v"         //multiplier has adder also
//`include "memory.v"
`include "FPADD.v"
`include "newfpm.v"
module ALU(A,B,opcode,clk,OUT);

// We have two 16-bit inputs
input [31:0] A,B;
// The opcode determines our next operation
input [4:0] opcode;
input clk;
// A 32-bit output
output [63:0] OUT;

// The inputs are wires
wire [31:0] A,B;
wire [4:0] opcode;
wire [31:0] mem [31:0];

// The output is a register
reg [63:0] OUT;



wire [31:0]s;
wire cout;
prefix_adder add(A,B,1'b0,cout,s); 
 // for  adder 

wire [31:0]s_car;
wire c_car;
prefix_adder addc(A,B,1'b1,c_car,s_car);  // for  adder_with carry

wire [31:0]subt;
wire cou;
prefix_adder sub(A,~B,1'b1,cou,subt);  // for  sub

wire [31:0]sub_bor;
wire c_bor;
prefix_adder subb(A,~B,1'b0,c_bor,sub_bor);  // for  sub with borrow


wire [63:0]mult;
multiplier mul(A,B,mult);  // for  multiplication

wire [31:0]fpa_out;
fpadd fla(A,B,clk,fpa_out);

wire [31:0]fpm_out;
multiplierfpm flm(A,B,clk,fpm_out);

/*wire [31:0]load,store;
mem m1(A[4:0],1'b0,load,1);			//load and store operations aren't working 
mem m2(A[4:0],B,store,0);*/




// Define operation codes
parameter   ADD = 5'b0000;
parameter   ADD_CARRY = 5'b0001;
parameter   SUB = 5'b0010;
parameter   SUB_BORROW = 5'b0011;
parameter   MUL = 5'b0100;
parameter   FPA = 5'b0101;
parameter   FPS = 5'b0110;
parameter   FPM = 5'b0111;
parameter   AND = 5'b1000;
parameter   OR  = 5'b1001;
parameter   XOR = 5'b1010;
parameter   NAND = 5'b1011;
parameter   NOR = 5'b1100;
parameter   XNOR = 5'b1101;
parameter   NOT = 5'b1110;
parameter   NEG = 5'b1111;
parameter   LOAD = 5'b10000;
parameter   STORE = 5'b10001;

// On the rising-edge of the clock
always @(*)
begin

    case(opcode)
        ADD: OUT <= {cout,s};           
        ADD_CARRY: OUT <= {c_car,s_car};
        SUB: OUT <= {cou,subt};
        SUB_BORROW: OUT <= {c_bor,sub_bor};
        MUL: OUT <= mult;
        FPA: OUT <= fpa_out;
        FPS: OUT <= fpa_out;
        FPM: OUT <= fpm_out;
        AND: OUT <= A & B;
        OR:  OUT <= A | B;
        XOR: OUT <= A ^ B;
        XNOR: OUT <= A ~^ B;
        NOR: OUT <= ~(A|B);
        NAND: OUT <= ~(A&B);
        NOT: OUT <= ~A;
        NEG: OUT <= !A;
        default: OUT <= 32'b0000000000000000;
    endcase
end
endmodule



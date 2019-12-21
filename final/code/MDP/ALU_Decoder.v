`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:18:58 05/28/2019 
// Design Name: 
// Module Name:    ALU_Decoder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU_Decoder(input [1:0]ALUop,
						 input [5:0]Fun,
						 output reg[2:0]ALU_Control
						 );

  //ALU_Control 定义
	parameter alu_and	=3'b000; //and
	parameter alu_or 	=3'b001; //or
	parameter alu_add	=3'b010; //add
	parameter alu_xor	=3'b011; //xor
	parameter alu_nor	=3'b100; //nor
	parameter alu_srl	=3'b101; //srl
	parameter alu_sub	=3'b110; //sub
	parameter alu_slt	=3'b111; //slt
	//FUN 定义
	parameter fun_and	=6'b100100; //and
	parameter fun_or	=6'b100101; //or
	parameter fun_add	=6'b100000; //add
	parameter fun_xor	=6'b010110; //xor
	parameter fun_nor	=6'b100111; //nor
	parameter fun_srl	=6'b000010; //srl
	parameter fun_sub	=6'b100010; //sub
	parameter fun_slt	=6'b101010; //slt
	
	always@*begin
		case(ALUop)
		2'b00:ALU_Control=alu_add;		//add计算地址
		2'b01:ALU_Control=alu_sub;		//sub比较条件
		2'b10:
			case(Fun)
				fun_add:ALU_Control = alu_add;//add
				fun_sub:ALU_Control = alu_sub;//sub
				fun_and:ALU_Control = alu_and;//and
				fun_or :ALU_Control = alu_or ;//or
				fun_slt:ALU_Control = alu_slt;//slt
				fun_nor:ALU_Control = alu_nor;//nor
				fun_srl:ALU_Control = alu_srl;//srl
				fun_xor:ALU_Control = alu_xor;//xor
				default:ALU_Control = 3'bx;
			endcase
		2'b11:ALU_Control=alu_slt;		//slti? 
		endcase
	end
endmodule

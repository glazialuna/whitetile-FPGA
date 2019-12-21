`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:57:41 05/14/2019 
// Design Name: 
// Module Name:    ctrl 
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
module ctrl(input clk,
				input  reset,
				input  zero,
				input  overflow,
				input  MIO_ready,
				input  [31:0] Inst_in,
				
				output reg MemRead,
				output reg MemWrite,
				output reg CPU_MIO,
				output reg IorD,
				output reg IRWrite,
				output reg RegWrite,
				output reg ALUSrcA,
				output reg PCWrite,
				output reg PCWriteCond,
				output reg Branch,
				output reg [1:0]RegDst,
				output reg [1:0]MemtoReg,
				output reg [1:0]ALUSrcB,
				output reg [1:0]PCSource,
				output reg[2:0]ALU_operation,
				output [4:0]state_out				
    );
	 
endmodule

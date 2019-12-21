`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:49:03 05/14/2019 
// Design Name: 
// Module Name:    Multi_CPU 
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
module Multi_CPU(input clk,
					  input reset,
					  input MIO_ready,
					  input[31:0]Data_in,
					  input INT,
					  
					  output[31:0]PC_out,
					  output[31:0]inst_out,
					  output mem_w,
					  output[31:0]Addr_out,
					  output[31:0]Data_out,
					  output CPU_MIO,
					  output [4:0]state
    );
wire zero,overflow,MemRead,MemWrite;
wire IorD,IRWrite,RegWrite,ALUSrcA,PCWrite,PCWriteCond,Branch;
wire [1:0]RegDst;
wire [1:0]MemtoReg;
wire [1:0]ALUSrcB;
wire [1:0]PCSource;
wire [2:0]ALU_operation;
assign mem_w = MemWrite && (~MemRead);

ctrl 			U11(.clk(clk),
					 .reset(reset),
					 .zero(zero),
					 .overflow(overflow),
					 .MIO_ready(MIO_ready),
					 .Inst_in(inst_out),
					 
					 .MemRead(MemRead),
					 .MemWrite(MemWrite),
					 .CPU_MIO(CPU_MIO),
					 
					 .IorD(IorD),
					 .IRWrite(IRWrite),
					 .RegWrite(RegWrite),
					 .ALUSrcA(ALUScrA),
					 .PCWrite(PCWrite),
					 .PCWriteCond(PCWriteCond),
					 .Branch(Branch),
					 .RegDst(RegDst),
					 .MemtoReg(MemtoReg),
					 .ALUSrcB(ALUSrcB),
					 .PCSource(PCSource),
					 .ALU_operation(ALU_operation),
					 .state_out(state)
					);
			
M_datapath 	U12(.clk(clk),
					 .reset(reset),
					 .MIO_ready(MIO_ready),
					 
					 .IorD(IorD),
					 .IRWrite(IRWrite),
					 .RegWrite(RegWrite),
					 .ALUSrcA(ALUScrA),
					 .PCWrite(PCWrite),
					 .PCWriteCond(PCWriteCond),
					 .Branch(Branch),
					 .RegDst(RegDst),
					 .MemtoReg(MemtoReg),
					 .ALUSrcB(ALUSrcB),
					 .PCSource(PCSource),
					 .ALU_operation(ALU_operation),
					 .data2CPU(Data_in),
					
					 .zero(zero),
					 .overflow(overflow),
					 .PC_Current(PC_out),
					 .Inst(inst_out),
					 .data_out(Data_out),
					 .M_addr(Addr_out)
					);
endmodule

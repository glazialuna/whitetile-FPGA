`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:40:00 05/21/2019 
// Design Name: 
// Module Name:    M_Datapath 
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
module M_datapath(input clk,
						input reset,
					   input MIO_ready,		//=1
					   input IorD,
					   input IRWrite,
					   input[1:0] RegDst,
					   input RegWrite,
					   input[1:0]MemtoReg,
					   input ALUSrcA,
					   input[1:0]ALUSrcB,
					   input[1:0]PCSource,	//四选一控制
					   input PCWrite,
					   input PCWriteCond,//Branch	
					   input Branch,	//1->beq;0->bne
					   input[2:0]ALU_operation,
					   input[31:0]data2CPU,
						
						output zero,
					   output overflow,
					   output[31:0]PC_Current,//PC(PC+4)
					   output[31:0]Inst,//指令寄存器输出
					   output[31:0]data_out,
					   output[31:0]M_addr	//寄存器地址
    );
wire N0,V5;
assign N0=1'b0;
assign V5=1'b1;
//assign MIO_ready=1;

wire [31:0]MDR,ALU_Out,Wt_data,res,rdata_A,rdata_B;
wire [31:0]A,B,PC_next,Jump_addr,offset;
wire [4:0]rs,rt,rd,Wt_addr;
assign rs=Inst[25:21];
assign rt=Inst[20:16];
assign rd=Inst[15:11];
assign offset={Imm_32[29:0],N0,N0};
assign Jump_addr={PC_Current[31:28],Inst[25:0],N0,N0};
wire [31:0]Line4;
assign Line4=32'h00000004;
wire [15:0]Imm_16;
wire [31:0]Imm_32,Lui;
assign Imm_16=Inst[15:0];
wire CE;
assign CE = MIO_ready && (PCWrite || (PCWriteCond && zero && Branch));
assign Lui = {Imm_16,16'h0000};

Ext_32 Ext32(.imm_16(Imm_16),.Imm_32(Imm_32));
//for inst
REG32 IR(.clk(clk),
			.rst(reset),
			.CE(IRWrite),
			.D(data2CPU),
			.Q(Inst)
			);
REG32 MDR_reg(.clk(clk),
			.rst(N0),
			.CE(V5),
			.D(data2CPU),
			.Q(MDR)
			);
MUX4T1_5 MUX1_Wt_addr(.s(RegDst),
								.I0(rt),
								.I1(rd),
								.I2(5'b11111),//$ra
								.I3(5'b00000),// not use
								.o(Wt_addr)
								);
MUX4T1_32 MUX2_Wt_data(.s(MemtoReg),
								.I0(ALU_Out),
								.I1(MDR),
								.I2(Lui),//Lui
								.I3(res),//JR=PC+4=res
								.o(Wt_data)
								);
Regs U2(.clk(clk),
		  .rst(reset),
		  .R_addr_A(rs),
		  .R_addr_B(rt),
		  .Wt_addr(Wt_addr),
		  .Wt_data(Wt_data),
		  .L_S(RegWrite),
		  .rdata_A(rdata_A),
		  .rdata_B(rdata_B)
		  );
MUX2T1_32 MUX4_A(.s(ALUSrcA),
					 .I0(PC_Current),
					 .I1(rdata_A),
					 .o(A)
					 );
MUX4T1_32 MUX3_B(.s(ALUSrcB),
					 .I0(rdata_B),
					 .I1(Line4),//res=PC+4
					 .I2(Imm_32),//Imm_32
					 .I3(offset),//offset={Imm_32[29:0],N0,N0}
					 .o(B)
					 );
alu U1(.A(A),
		 .B(B),
		 .ALU_operation(ALU_operation),
		 .zero(zero),
		 .res(res),
		 .overflow(overflow)
		 );

REG32 ALUout(.clk(clk),
				 .rst(N0),
			 	 .CE(V5),
				 .D(res),
				 .Q(ALU_Out)
				 );
MUX4T1_32 MUX6_PCnext(.s(PCSource),
					 .I0(res),//PC+4 = res
					 .I1(ALU_Out),//Branch_PC=ALU_Out
					 .I2(Jump_addr),//Jump_addr={PC_Current[31:28],Inst[25:0],N0,N0};
					 .I3(rdata_A),//j$r = j r_dataA
					 .o(PC_next)
					 );
REG32 PC(.clk(clk),
				 .rst(reset),
			 	 .CE(CE),
				 .D(PC_next),
				 .Q(PC_Current)
				 );
MUX2T1_32 MUX_addr(.s(IorD),
					 .I0(PC_Current),
					 .I1(ALU_Out),
					 .o(M_addr)
					 );
assign data_out=rdata_B;
endmodule

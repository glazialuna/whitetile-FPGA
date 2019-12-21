`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:38:29 05/28/2019 
// Design Name: 
// Module Name:    ALU 
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
module alu(input[31:0] A,B,
			  input[2:0]ALU_operation,
			  output [31:0]res,
			  output zero,overflow
    );
  parameter And = 3'b000;	//res=A&B
  parameter Or  = 3'b001;	//res=A|B
  parameter Add = 3'b010;	//res=A+B signed
  parameter Xor = 3'b011;	//res=A^B
  parameter Nor = 3'b100;	//res=~(A|B)
  parameter Srl = 3'b101;	//res=B>>A
  parameter Sub = 3'b110;	//res=A-B signed
  parameter Slt = 3'b111;	//res=(A-B<0)?1:0 signed
  reg[32:0] result;
  parameter one=32'h00000001,zero_0=32'h00000000;
	 always@(*)begin
		case(ALU_operation)
		And:begin 
			result=A&B; 
		end
		Or:begin
			result=A|B;
		end
		Add:begin
		   result=A+B;
		end
		Xor:begin
			result=A^B;
		end
		Nor:begin
			result=~(A|B);
		end
		Srl:begin
			if(A==0) {result[31:0],result[32]}={B,1'b0};
			else result=B>>1;
		end
		Sub:begin
			result=A-B;
		end
		Slt:begin
			result=A<B?1:0;
		end
		default:result=33'hx;
		endcase
	end
	assign res=result[31:0];
	assign zero=(res==0)?1:0;
	assign overflow=result[32];//溢出标志公式

endmodule

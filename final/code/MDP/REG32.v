`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:37:52 03/26/2019 
// Design Name: 
// Module Name:    REG32 
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
module REG32(input clk,
				 input rst,
				 input CE,
				 input [31:0]D,
				 output reg[31:0]Q
    );
	 always @(posedge clk or posedge rst)
		if(rst) Q <= 0;
		else if(CE) Q <= D;
		else Q <= Q;
endmodule

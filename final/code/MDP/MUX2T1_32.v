`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:24:16 03/26/2019 
// Design Name: 
// Module Name:    MUX2T1_32 
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
module MUX2T1_32(input[31:0]I0,
					  input[31:0]I1,
					  input s,
					  output[31:0]o
);

	assign o = s ? I1 : I0;			////32位2选一,I0、I1对应选择通道0、1
	
endmodule

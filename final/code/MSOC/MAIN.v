`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:11:37 06/24/2019 
// Design Name: 
// Module Name:    MAIN 
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
module MAIN(input clk,
				input [11:0]datafromCPU,
				input [9:0]x,
				input [8:0]y,
				input video,
				output reg[11:0] color,
				output [31:0]test_pos,
				output [31:0]test_addr
    );
	wire [11:0]pos;
	assign pos=datafromCPU[11:0];
	wire [1:0]blockx;
	assign blockx=(160 <= x) + (320 <= x) + (480 <= x);
	wire [1:0]liney;
	assign liney=(y <= 160 ) + (y <= 340);
	wire [3:0]addr;
	assign addr=liney * 4 + blockx; //现在的vga位置
	always @ (posedge clk)begin
		if(video)begin
			if((addr == pos[11:8] ) | (addr == pos[7:4] ) | (addr == pos[3:0] ))
				color <= 12'h000;
			else
				color <= 12'hFFF;
		end
	end
	
	assign test_pos = {20'h0,pos};
	assign test_addr = {blockx,28'h0,liney};
endmodule

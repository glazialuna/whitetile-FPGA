`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:57:07 06/24/2019 
// Design Name: 
// Module Name:    ps2 
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
module ps2(input clk,	//25mhz
			  input reset,
			  input PS2_clk,
			  input PS2_data,
			  output reg[15:0]key
    );
	reg PS2_clkf, PS2_dataf;
	reg [7:0] PS2_clk_filter, PS2_data_filter;
	reg [10:0] shift1, shift2;
	
	wire [15:0]xkey;
	assign xkey = {shift2[8:1], shift1[8:1]};
	
	// Filter for PS2 clock and data
	always @ *
	begin
		key = xkey;
	end
	
	always @ (posedge clk or posedge reset)
	begin
		if (reset == 1)
		begin
			PS2_clk_filter <= 0;
			PS2_data_filter <= 0;
			PS2_clkf       <= 1;
			PS2_dataf       <= 1;
		end
		else
		begin
			PS2_clk_filter <= {PS2_clk, PS2_clk_filter[7:1]};
			PS2_data_filter <= {PS2_data, PS2_data_filter[7:1]};
			if (PS2_clk_filter == 8'b1111_1111)
				PS2_clkf <= 1;
			else if (PS2_clk_filter == 8'b0000_0000)
				PS2_clkf <= 0;
			if (PS2_data_filter == 8'b1111_1111)
				PS2_dataf <= 1;
			else if (PS2_data_filter == 8'b0000_0000)
				PS2_dataf <= 0;
		end
	end
	
	// Shift register used to clock in scan codes from PS2
	always @ (negedge PS2_clkf or posedge reset)
	begin
		if (reset == 1)
		begin
			shift1 <= 0;
			shift2 <= 1;
		end
		else
		begin
			shift1 <= {PS2_dataf, shift1[10:1]};
			shift2 <= {shift1[0], shift2[10:1]};
		end
	end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:04:14 06/30/2012 
// Design Name: 
// Module Name:    MIO_BUS 
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
module MIO_BUS(input clk,
					input rst,
					input[3:0]BTN,
					input[15:0]SW,
					input mem_w,
					input[31:0]Cpu_data2bus,				//data from CPU
					input[31:0]addr_bus,						//addr fron CPU
					input[31:0]ram_data_out,
					input[15:0]led_out,
					input[31:0]counter_out,
					input counter0_out,
					input counter1_out,
					input counter2_out,
					
					output reg[31:0]Cpu_data4bus,				//write to CPU
					output reg[31:0]ram_data_in,				//from CPU write to Memory
					output reg[9:0]ram_addr,						//Memory Address signals
					output reg data_ram_we,
					output reg GPIOf0000000_we,	//GPIOffffff00_we
					output reg GPIOe0000000_we,	//GPIOfffffe00_we
					output reg counter_we,						//������
					output reg[31:0]Peripheral_in,			//�����ⲿ������
					
					input [31:0] lg_out,
					output reg lg_we,
					output reg [6:0] lg_addr,
					// input wire [31:0] score,
					// output reg [31:0] score_reg,
					// output reg score_reg_we,
					input video,
					input [15:0]key, // keycode
					output reg[11:0]pos, // the pos of tile
					output reg[31:0]score, // the score
					output reg[31:0]testdata, // testprocess
					output reg[31:0]gametime
					);
reg data_ram_rd,GPIOf0000000_rd,GPIOe0000000_rd,counter_rd;
reg [7:0] led_in;
reg lg_rd;
initial begin
	score = 32'h0;
	pos = 32'h06b;
	testdata = 32'hFFFFFFFF;
end
//RAM & IO decode signals
always @* begin
	data_ram_we = 0;	//����д�ź�
	data_ram_rd = 0;	//������ź�
	counter_we = 0;	//������д�ź�
	counter_rd = 0;	//���������ź�
	GPIOf0000000_we = 0;	//�豸1��PIOд�ź�
	GPIOe0000000_we = 0;	//��������Counter_xдϲ��
	GPIOf0000000_rd = 0;	//�豸3��4��SW�ȶ��ź�
	GPIOe0000000_rd = 0;	//�豸2���߶���ʾ��д�ź�
	ram_addr = 10'h0;	//�ڴ������ַ��RAM--B��ַ
	ram_data_in = 32'h0;	//�ڴ�����ݣ�RAM_B�������
	Peripheral_in = 32'h0;	//�������ߣ�CPU���������д������
	Cpu_data4bus = 32'h0;	//��ʼ���� //data_ram(00000000 - 00000ffc,actually lower 4KB RAM)
	
	lg_we = 0;
	lg_rd = 0;
	lg_addr = 7'b0;
	
	case(addr_bus[31:28])
	4'h0:begin	
				if(addr_bus == 32'h00000100) begin   //s0 is addr of score 0x0100 
					if(mem_w)
						score = Cpu_data2bus;
					else
						Cpu_data4bus = score;
				end
				
				else if (addr_bus == 32'h00000200) begin // position 0x0200
					if(mem_w && video)
						pos = Cpu_data2bus[11:0];
					else
						Cpu_data4bus = {20'h0,pos};
				end
				
				else if (addr_bus == 32'h00000300) begin // ps2 addr 0x0300
					//Peripheral_in=Cpu_data2bus;
					Cpu_data4bus = {16'h0000,key}; // send ps2 to cpu
				end
				
				else if (addr_bus == 32'h00000400) begin //gametime addr 0x400
					if(mem_w)
						gametime = Cpu_data2bus;
					else
						Cpu_data4bus = gametime;
				end
				
				else if (addr_bus == 32'h00000900) begin //testdata addr 0x900
					if(mem_w)
						testdata = Cpu_data2bus;
					else
						Cpu_data4bus = testdata;
				end
				
				else begin
					data_ram_we=mem_w;
					ram_addr=addr_bus[11:2];
					ram_data_in=Cpu_data2bus;
					Cpu_data4bus = ram_data_out;
					data_ram_rd=~mem_w;
				end
		  end

	4'he:begin	//�߶���ʾ����e0000000 - efffffff , SSeg7_Dev�� GPIO/LED��ʾ��ַ)
			GPIOe0000000_we=mem_w;
			Peripheral_in=Cpu_data2bus;
			Cpu_data4bus = counter_out;
			GPIOe0000000_rd=~mem_w;
		  end
	
	4'hf:begin	//PIO (f0000000-fffffff0 , 8LEDs - GPIO/Switch��BTN��ַ & conunter, f000004-fffffff4)
			if(addr_bus[2])begin
				counter_we=mem_w;
				Peripheral_in=Cpu_data2bus;	//write Counter Value��f000004-fffffff4
				Cpu_data4bus = counter_out;
				counter_rd=~mem_w;
			end
			else begin
				GPIOf0000000_we=mem_w;
				Peripheral_in=Cpu_data2bus;	//write Counter set & Initialization and light LED��f0000000-fffffff0
				Cpu_data4bus = {counter0_out, counter1_out, counter2_out, 9'h00, led_out, BTN, SW};
				GPIOf0000000_rd=~mem_w;
			end
		  end
	endcase
		  
	casex ({data_ram_rd, lg_rd, GPIOe0000000_rd, counter_rd, GPIOf0000000_rd})
			5'b1xxxx: Cpu_data4bus = ram_data_out;	// read from RAM
			5'bx1xxx: Cpu_data4bus = lg_out;	// read from life game
			5'bxx1xx: Cpu_data4bus = counter_out;	// read from Counter
			5'bxxx1x: Cpu_data4bus = counter_out;	// read from Counter
			5'bxxxx1: Cpu_data4bus = {counter0_out, counter1_out,  counter2_out, 9'h00, led_out, BTN, SW};	//read from SW & BTN
	endcase
	
end

					
endmodule

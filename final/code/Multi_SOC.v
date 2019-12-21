`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:49:45 05/14/2019 
// Design Name: 
// Module Name:    Multi_SOC 
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
module Multi_SOC(input RSTN,
					  output [4:0]BTN_x, 
					  input[3:0]BTN_y,
					  input [15:0]SW,
					  input clk_100mhz,
					  output CR,
					  output RDY,
					  output readn,
					  output seg_clk,
					  output seg_sout,
					  output SEG_PEN,
					  output seg_clrn,
					  output led_clk,
					  output led_sout,
					  output LED_PEN,
					  output led_clrn,
					  output [7:0]SEGMENT,
					  output [3:0]AN,
					  output [7:0]LED,
					  
					  input PS2_clk,
					  input PS2_data,
					  output [3:0]Red,
					  output [3:0]Green,
					  output [3:0]Blue,
					  output h_sync,
					  output v_sync
    );
wire V5,N0;
assign V5=1'b1;
assign N0=1'b0;

wire [4:0]Key_out;
wire [3:0]Pulse;
wire [15:0]SW_OK;
wire [3:0]BTN_OK;

wire [63:0]point_out_U5,LES;
wire [31:0]Data1;
assign point_out_U5={Div[31:0],Div[31:13],State[4:0],N0,N0,N0,N0,N0,N0,N0,N0};
assign Data1={N0,N0,PC[31:2]};
assign LES={64'b0000000000000000000000000000000000000000000000000000000000000000};
wire [31:0]test_addr,test_pos;
wire [31:0]test_CPUpos;
assign test_CPUpos={20'h0,CPUpos};
SAnti_jitter U9(.RSTN(RSTN),
					 .clk(clk_100mhz),
					 .Key_y(BTN_y),
					 .Key_x(BTN_x),
					 .SW(SW),
					 .readn(readn),
					 .CR(CR),
					 .Key_out(Key_out),
					 .Key_ready(RDY),
					 .pulse_out(Pulse),
					 .BTN_OK(BTN_OK),
					 .SW_OK(SW_OK),
					 .rst(rst)
					);
wire [31:0]Div;
wire IO_clk,Clk_CPU;
assign IO_clk = ~Clk_CPU;
clk_div U8(.clk(clk_100mhz),
			  .rst(rst),
			  .SW2(SW_OK[2]),
			  .clkdiv(Div),
			  .Clk_CPU(Clk_CPU)
			 );

wire [31:0]Ai,Bi;
wire [7:0]blink;
wire [4:0]Ctrl;
assign Ctrl = {SW_OK[7:5],SW_OK[15],SW_OK[0]};
SEnter_2_32 M4(.clk(clk_100mhz),
					.Din(Key_out),
					.D_ready(RDY),
					.BTN(BTN_OK[2:0]),
					.Ctrl(Ctrl),
					.readn(readn),
					.Ai(Ai),
					.Bi(Bi),
					.blink(blink)
					);
wire [7:0]LE_out,point_out;
wire [31:0]Disp_num;
SSeg7_Dev U6(.clk(clk_100mhz),
				 .rst(rst),
				 .Start(Div[20]),
				 .SW0(SW_OK[0]),
				 .flash(Div[25]),
				 .Hexs(Disp_num),
				 .point(point_out),
				 .LES(LE_out),
				 .seg_clk(seg_clk),
				 .seg_sout(seg_sout),
				 .SEG_PEN(SEG_PEN),
				 .seg_clrn(seg_clrn)
				);
wire [1:0]counter_set;
wire [15:0]LED_out;
wire [31:0]CPU2IO;//out from MIO_BUS
wire GPIOF0;//out from MIO_BUS
SPIO U7(.clk(IO_clk),
		  .rst(rst),
		  .EN(GPIOF0),
		  .Start(Div[20]),
		  .P_Data(CPU2IO),
		  
		  .counter_set(counter_set),
		  .LED_out(LED_out),
		  .GPIOf0(),
		  .led_clk(led_clk),
		  .led_sout(led_sout),
		  .LED_PEN(LED_PEN),
		  .led_clrn(led_clrn)
		  );
wire counter0_OUT,counter1_OUT,counter2_OUT;
wire [31:0]counter_out;
wire 	counter_we;//out from MIO_BUS
Counter_x U10(.clk(IO_clk),
				  .rst(rst),
				  .clk0(Div[8]),
				  .clk1(Div[9]),
				  .clk2(Div[11]),
				  .counter_we(counter_we),
				  .counter_ch(counter_set),
				  .counter_val(CPU2IO),
				  
				  .counter0_OUT(counter0_OUT),
				  .counter1_OUT(counter1_OUT),
				  .counter2_OUT(counter2_OUT),
				  .counter_out(counter_out)
				  );


wire mem_w;
wire [31:0]Addr_out,Data_out,inst,PC;
wire [4:0]State;
wire [31:0]Data_in;//out from MIO_BUS
Multi_CPU U1(.clk(Clk_CPU),
				 .reset(rst),
				 .INT(counter0_OUT),
				 .MIO_ready(V5),
				 .Data_in(Data_in),
				 
				 .mem_w(mem_w),
				 .Addr_out(Addr_out),
				 .Data_out(Data_out),
				 .state(State),
				 .CPU_MIO(),
				 .inst_out(inst),
				 .PC_out(PC)
				 );
wire [31:0]ram_data_out;
wire [9:0]ram_addr;//out from MIO_BUS
wire [31:0]ram_data_in;
wire data_ram_we;//out from MIO_BUS
RAM_B U3(.clka(clk_100mhz),
			.addra(ram_addr),
			.wea(data_ram_we),
			.dina(ram_data_in),
			
			.douta(ram_data_out)
			);
wire GPIOE0;
wire [2:0]Scan;
assign Scan={SW_OK[1],Div[19:18]};
Seg7_Dev U61(.Scan(Scan),
				 .SW0(SW_OK[0]),
				 .flash(Div[25]),
				 .Hexs(Disp_num),
				 .point(point_out),
				 .LES(LE_out),
				 
				 .SEGMENT(SEGMENT),
				 .AN(AN)
				 );
PIO U71(.clk(IO_clk),
		  .rst(rst),
		  .EN(GPIOF0),
		  .PData_in(CPU2IO),
		  
		  .counter_set(),
		  .LED_out(LED),
		  .GPIOf0()
		  );

//-----------for vga and ps2 and key
wire [15:0]key;
wire [11:0]CPUpos;
wire [31:0]testdata,score;
wire clk_25mhz,inside_video;
wire [9:0]x_position;
wire [8:0]y_position;
assign clk_25mhz=Div[1];
vga_controller VGA (
		.clk(clk_25mhz),
		.reset(rst),
		.h_sync(h_sync),
		.v_sync(v_sync),
		.inside_video(inside_video),
		.x_position(x_position),
		.y_position(y_position)
	);
wire [11:0] color;
assign Red = inside_video ? color[11:8] : 4'b0000;
assign Green = inside_video ? color[7:4] : 4'b0000;
assign Blue = inside_video ? color[3:0]: 4'b0000;
ps2 keyboard(.clk(Div[0]),.reset(rst),.PS2_clk(PS2_clk),.PS2_data(PS2_data),.key(key));
wire [31:0]gametime;

MAIN top(.clk(clk_25mhz),
			.video(inside_video),
			.datafromCPU(CPUpos),
			.x(x_position),
			.y(y_position),
			.color(color),
			.test_addr(test_addr),
			.test_pos(test_pos)
			);

Multi_8CH32 U5(.clk(IO_clk),
					.rst(rst),
					.EN(GPIOE0),
					.Test(SW_OK[7:5]),
					.point_in(point_out_U5),
					.LES(LES),
					.Data0(CPU2IO),
					.data1(test_CPUpos),
					.data2(test_pos),
					.data3({key,key}),
					.data4(score),
					.data5(testdata),
					.data6(gametime),
					.data7(PC),
					
					.Disp_num(Disp_num),
					.point_out(point_out),
					.LE_out(LE_out)
					);
MIO_BUS U4(.clk(clk_100mhz),
			  .rst(rst),
			  .BTN(BTN_OK),
			  .SW(SW_OK),
			  .mem_w(mem_w),
			  .led_out(LED_out),
			  .addr_bus(Addr_out),
			  .Cpu_data2bus(Data_out),
			  .ram_data_out(ram_data_out),
			  .counter_out(counter_out),
			  .counter0_out(counter0_OUT),
			  .counter1_out(counter1_OUT),
			  .counter2_out(counter2_OUT),
			  
			  .Cpu_data4bus(Data_in),
			  .ram_data_in(ram_data_in),
			  .data_ram_we(data_ram_we),
			  .ram_addr(ram_addr),
			  .GPIOf0000000_we(GPIOF0),
			  .GPIOe0000000_we(GPIOE0),
			  .counter_we(counter_we),
			  .Peripheral_in(CPU2IO),
			  
			  .video(inside_video),
			  .key(key),
			  .pos(CPUpos),
			  .score(score),
			  .testdata(testdata),
			  .gametime(gametime)
			  );
endmodule

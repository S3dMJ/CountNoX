//
//
//  Two-addres Microcode control unit. 
//  uses 8X11 ROM to store next states and output signals.
//
//  Made by. Saad Al-Jehani [1935151] 
//  Feb 11th, 2023
//
//

module ControlUnit
	(input go,
	 input done,
	 input ax,
	 output init,
	 output dec_i,
	 output inc_tr,
	 input reset,
	 input clk

);

wire [2:0] A,B, inData, address;
wire [1:0] select2;
wire 		  select1;
wire [10:0] data;
wire w1,w2,w3;


assign w1      = data[0];
assign w2      = data[1];
assign w3      = data[2];
assign A       = data[5:3];
assign B       = data[8:6];
assign select2 = data[10:9];
assign dec_i   = w1;
assign inc_tr  = w2;
assign init    = w3;

ROM8_11    R0( address  ,data);
MUX2_1     M1( select1  ,inData  ,B    ,A);
MUX4_1     M2( select2  ,select1    ,go   ,done ,ax ,1'b1);
register_3 R1( inData   ,address ,reset, 1'b1 ,clk);

	 
	 

endmodule
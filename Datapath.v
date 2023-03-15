//
//
//  Datapath of CountNox Algorithm,  
//
//  Made by. Saad Al-Jehani [1935151] 
//  Feb 11th, 2023
//
//

module Datapath #(parameter SIZE=8) (

	 // input data
	 input   [SIZE-1:0]  dataIn,
	 input   [SIZE-1:0]  input_x,
	 input   [SIZE-1:0]  input_i,
	 input   [SIZE-1:0]  input_tr,

	 // input control signals
    input 			 init,
    input 			 dec_i,
    input 			 inc_tr,
	 input 			 clk,
	 
	 // output data
	 output [SIZE-1:0] freq,
	 output [SIZE-1:0] address,
	 
	 
	 // output status signals
	 output done,
	 output ax
	 

);

wire  [7:0] x_data, i_data, tr_data;
wire        i_zero ;

assign ax = (dataIn != x_data);
assign i_zero = !(i_data > 8'b0);
assign address = i_data;

register         x_reg     (input_x , x_data  , clk);
register         freq_reg  (tr_data  , freq    , clk);
register_1       done_reg  (i_zero  , done    , clk);
counter  #(SIZE) i         (input_i , i_data  , init   , dec_i, 0     , clk);
counter  #(SIZE) tr        (input_tr, tr_data , init   , 0    , inc_tr, clk);



endmodule

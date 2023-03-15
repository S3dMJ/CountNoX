//
//
//  Top-Level Design
//  connects array a [256x8]ROM  with CountNox Algorithm
//  to count how many times input x is not repeated. 
//
//  Made by. Saad Al-Jehani [1935151] 
//  Feb 11th, 2023
//
//

module Top_Level_design #(parameter SIZE=8) (
	 input   [7:0]  x,
	 output  [7:0]  freq,
	 input go,
	 output done,
	 input reset,

    input clk
);

wire [7:0] address, data; 


CountNox #(SIZE) CN      (data, x, freq, address, reset, go, done, clk);

ROM      #(SIZE) ROM_11  (address, data);

endmodule

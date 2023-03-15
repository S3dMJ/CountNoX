//
//
//  CountNox Algorithm that calculates the frequency that input x
//  is not repeated in array a
//
//  Made by. Saad Al-Jehani [1935151] 
//  Feb 11th, 2023
//
//

module CountNox #(parameter SIZE=8)(
	 input   [7:0]  dataIn,
	 input   [7:0]  x,
	 output  [7:0]  freq,
	 output  [7:0]  address,
	 input 			 reset,
	 input 			 go,
	 output 			 done,

    input 			 clk
	 
);

wire dec_i, init, inc_tr;

ControlUnit         CU (go, done, ax, init, dec_i, inc_tr, reset, clk);
Datapath    #(SIZE) DP (dataIn, x, 8'b1111_1111, 8'b0, init, dec_i, inc_tr, clk, freq, address, done, ax);

endmodule
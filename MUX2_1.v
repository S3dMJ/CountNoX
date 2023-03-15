//
//
//  an 2 to 1 multiplexer that determens the next state
//  used in the Two-Address Microcode Control Unit
//
//  Made by. Saad Al-Jehani [1935151] 
//  Feb 11th, 2023
//
//

module MUX2_1(
	 input     select,
	 output reg  [2:0]  data,
	 input [2:0] A,
	 input [2:0] B
	 
);


always @(*)
     case(select)
        1'b0: data = A;
		  1'b1: data = B;

     endcase


endmodule
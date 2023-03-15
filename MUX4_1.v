//
//
//  an 4 to 1 multiplexer that determens if the next state is NSF or NST.
//  used in the Two-Address Microcode Control Unit
//
//  Made by. Saad Al-Jehani [1935151] 
//  Feb 11th, 2023
//
//

module MUX4_1(
	 input     [1:0] select,
	 output reg   data,
	 input  go,
	 input  done,
	 input  ax,
	 input  one
	 
	 
);


always @(*)
     case(select)
        2'b00: data = go;
		  2'b01: data = done;
		  2'b10: data = ax;
		  2'b11: data = one;


     endcase


endmodule
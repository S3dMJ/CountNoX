//
//
//  an 8x11 ROM that contains the values of the next states and control signals
//  used in the Two-Address Microcode Control Unit
//
//  Made by. Saad Al-Jehani [1935151] 
//  Feb 11th, 2023
//
//


module ROM8_11(
	 input   [2:0]  address,
	 output reg  [10:0]  data
);


always @(address)
     case(address)
        3'b000: data = 11'b00_000_001_0_0_0; 
        3'b001: data = 11'b11_010_010_1_0_0; 
        3'b010: data = 11'b01_011_000_0_0_0; 
        3'b011: data = 11'b10_010_100_0_0_1; 
        3'b100: data = 11'b11_010_010_0_1_0; 

        default: data = 11'b00_000_000_0_0_0;
     endcase


endmodule
//
//
//  ROM to store 8-bit values from array a
//  256 bytes Rom, 8-bit address
//  Made by. Saad Al-Jehani [1935151] 
//  Feb 11th, 2023
//
//

module ROM #(parameter SIZE=8) (
	 input   [SIZE-1:0]  address,
	 output reg  [SIZE-1:0]  data
);


always @(address)
     case(address)
        8'b0000_0000: data = 8'b0000_0000; 
        8'b0001_0001: data = 8'b0000_0001; 
        8'b0010_0010: data = 8'b0000_0001; 
        8'b0011_0011: data = 8'b0000_0001; 
        8'b0100_0100: data = 8'b0000_0001; 
        8'b0101_0101: data = 8'b0000_0001; 
        8'b0110_0110: data = 8'b0000_0001; 
        8'b0111_0111: data = 8'b0000_0001; 
        default: data = 8'b0000_0000;
     endcase


endmodule
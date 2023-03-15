//
//
//  an 3-bit register that contains the values of the next state
//  used in the Two-Address Microcode Control Unit
//
//  Made by. Saad Al-Jehani [1935151] 
//  Feb 11th, 2023
//
//

module register_3 
	(input   [2:0] inData,
	 output  [2:0] outData,
	 input reset,
    input load,
    input clk);

	reg  [2:0] data;
	
	assign outData  = data;
	
	always @(posedge clk)
	begin
		   if(reset) // if there is reset signal, value returns to zero
			data <= 0;
			else if(load) data <= inData;
	end

endmodule

//
//
//  1-bit Register to store Done value
//  Made by. Saad Al-Jehani [1935151] 
//  Feb 11th, 2023
//
//

    module register_1
	(input   inData,
	 output reg  outData,
    input clk);
    always @(posedge clk)
    begin
		outData = inData;  
    end  
endmodule 
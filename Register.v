//
//
//  8-bit Register to store freq, x, tr variables values
//  Made by. Saad Al-Jehani [1935151] 
//  Feb 11th, 2023
//
//

    module register
	(input   [7:0] inData,
	 output reg  [7:0] outData,
    input clk);
	 
    always @(posedge clk)
    begin
		outData = inData;  
    end  
endmodule 
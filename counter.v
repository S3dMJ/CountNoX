//
//
//  8-bit countup / count down counter, made for tr and i variables.
//  Made by. Saad Al-Jehani [1935151] 
//  Feb 11th, 2023
//
//

module counter #(parameter SIZE=8)
	(input       [7:0]  numberIn,
	 output  reg [7:0]  numberOut,
	 input load,
    input dec,
	 input inc,
    input clk);


always @(posedge clk)

if (load) begin // active high reset

numberOut <= numberIn ;

end else if (inc) begin

numberOut <= numberOut + 1;

end else if (dec) begin

numberOut <= numberOut - 1;

end endmodule

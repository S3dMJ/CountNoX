//
//
//  Test-Bench for CountNox algorithm conected to array a [256X8 ROM]
//  Made by. Saad Al-Jehani [1935151] 
//  Feb 11th, 2023
//
//

module test;

	reg [7:0] x;
	reg go;
	reg reset;
	reg clk;
	wire done;
	wire [7:0] freq;


	Top_Level_design uut
	(
		.x(x), 
		.freq(freq), 
		.done(done), 
		.go(go), 
		.reset(reset),
		.clk(clk)

	);

	
	always 
	  #5 clk = ~clk;

	initial begin
		x = 0;
		go = 0;
		reset = 1;
		clk = 0;
		@(posedge clk);
		reset = 0;
		@(posedge clk);
		x = 8'b0;
		go = 1;

		
		wait(done);
		#15;
		$finish;

	end
      
endmodule
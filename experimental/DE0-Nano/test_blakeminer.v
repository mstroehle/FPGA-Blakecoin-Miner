// Testbench for blakeminer.v

`timescale 1ns/1ps

module test_blakeminer ();

	reg clk = 1'b0;
	
	 wire [7:0] LEDS_out;
	blakeminer uut (clk, LEDS_out);

	reg [31:0] cycle = 32'd0;

	initial begin
		clk = 0;
		
		while(1)
		begin
			#5 clk = 1; #5 clk = 0;
		end
	end

	always @ (posedge clk)
	begin
		cycle <= cycle + 32'd1;
	end

endmodule


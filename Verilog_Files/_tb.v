`timescale 1ns/1ps
module _tb();
	reg ;
	wire ;

	 dut(
	);

	task null_state(); begin
		end
	endtask

	initial begin

		null_state();
		#10;

		//Testing Truth Table line 0
		#10;
	end
endmodule 
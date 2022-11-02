`timescale 1ns/1ps
module mem_data_demux_tb();
	reg PH0_t, PH0_f, D7_t, D7_f;
	wire I7_t, I7_f, C7_t, C7_f;

	mem_data_demux dut(
		PH0_t, PH0_f,
		D7_t, D7_f,
		I7_t, I7_f, 
		C7_t, C7_f
	);

	task null_state(); begin
		PH0_t=0; PH0_f=0; //PH0==NULL
		D7_t=0; D7_f=0; //D7==NULL
		end
	endtask

	initial begin

		null_state();
		#10;

		//Testing Truth Table line 0
		PH0_t=0; PH0_f=1;// PH0==0
		D7_t=0; D7_f=1;// D7==0
		#10;
		if(I7_t==N && I7_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: I7 LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: I7 LINE 0");
		if(C7_t==0 && C7_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C7 LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C7 LINE 0");

		null_state();
		#10;

		//Testing Truth Table line 1
		PH0_t=0; PH0_f=1;// PH0==0
		D7_t=0; D7_f=1;// D7==0
		#10;
		if(I7_t==N && I7_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: I7 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: I7 LINE 1");
		if(C7_t==1 && C7_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C7 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C7 LINE 1");

		null_state();
		#10;

		//Testing Truth Table line 2
		PH0_t=0; PH0_f=1;// PH0==0
		D7_t=0; D7_f=1;// D7==0
		#10;
		if(I7_t==0 && I7_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: I7 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: I7 LINE 2");
		if(C7_t==N && C7_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C7 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C7 LINE 2");

		null_state();
		#10;

		//Testing Truth Table line 3
		PH0_t=0; PH0_f=1;// PH0==0
		D7_t=0; D7_f=1;// D7==0
		#10;
		if(I7_t==1 && I7_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: I7 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: I7 LINE 3");
		if(C7_t==N && C7_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C7 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C7 LINE 3");
	end
endmodule 
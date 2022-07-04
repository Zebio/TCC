`timescale 1ns/1ps
module overflow_detector_tb();
	reg A_t, A_f, B_t, B_f, S_t, S_f;
	wire OF_t, OF_f;

	overflow_detector dut(
		A_t, A_f,
		B_t, B_f,
		S_t, S_f,
		OF_t, OF_f
	);

	task null_state(); begin
		A_t=0; A_f=0; //A==NULL
		B_t=0; B_f=0; //B==NULL
		S_t=0; S_f=0; //S==NULL
		end
	endtask

	initial begin

		null_state();
		#10;

		//Testing Truth Table line 0
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		S_t=0; S_f=1;// S==0
		#10;
		if(OF_t==0 && OF_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: OF LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: OF LINE 0");

		null_state();
		#10;

		//Testing Truth Table line 1
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		S_t=1; S_f=0;// S==1
		#10;
		if(OF_t==1 && OF_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: OF LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: OF LINE 1");

		null_state();
		#10;

		//Testing Truth Table line 2
		A_t=0; A_f=1;// A==0
		B_t=1; B_f=0;// B==1
		S_t=0; S_f=1;// S==0
		#10;
		if(OF_t==0 && OF_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: OF LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: OF LINE 2");

		null_state();
		#10;

		//Testing Truth Table line 3
		A_t=0; A_f=1;// A==0
		B_t=1; B_f=0;// B==1
		S_t=1; S_f=0;// S==1
		#10;
		if(OF_t==0 && OF_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: OF LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: OF LINE 3");

		null_state();
		#10;

		//Testing Truth Table line 4
		A_t=1; A_f=0;// A==1
		B_t=0; B_f=1;// B==0
		S_t=0; S_f=1;// S==0
		#10;
		if(OF_t==0 && OF_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: OF LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: OF LINE 4");

		null_state();
		#10;

		//Testing Truth Table line 5
		A_t=1; A_f=0;// A==1
		B_t=0; B_f=1;// B==0
		S_t=1; S_f=0;// S==1
		#10;
		if(OF_t==0 && OF_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: OF LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: OF LINE 5");

		null_state();
		#10;

		//Testing Truth Table line 6
		A_t=1; A_f=0;// A==1
		B_t=1; B_f=0;// B==1
		S_t=0; S_f=1;// S==0
		#10;
		if(OF_t==1 && OF_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: OF LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: OF LINE 6");

		null_state();
		#10;

		//Testing Truth Table line 7
		A_t=1; A_f=0;// A==1
		B_t=1; B_f=0;// B==1
		S_t=1; S_f=0;// S==1
		#10;
		if(OF_t==0 && OF_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: OF LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: OF LINE 7");
	end
endmodule 
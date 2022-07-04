`timescale 1ns/1ps
module zero_detector_tb();
	reg E1_t, E1_f, E2_t, E2_f, E3_t, E3_f, E4_t, E4_f;
	wire zero_t, zero_f;

	zero_detector dut(
		E1_t, E1_f,
		E2_t, E2_f,
		E3_t, E3_f,
		E4_t, E4_f,
		zero_t, zero_f
	);

	task null_state(); begin
		E1_t=0; E1_f=0; //E1==NULL
		E2_t=0; E2_f=0; //E2==NULL
		E3_t=0; E3_f=0; //E3==NULL
		E4_t=0; E4_f=0; //E4==NULL
		end
	endtask

	initial begin

		null_state();
		#10;

		//Testing Truth Table line 0
		E1_t=0; E1_f=1;// E1==0
		E2_t=0; E2_f=1;// E2==0
		E3_t=0; E3_f=1;// E3==0
		E4_t=0; E4_f=1;// E4==0
		#10;
		if(zero_t==1 && zero_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: zero LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: zero LINE 0");

		null_state();
		#10;

		//Testing Truth Table line 1
		E1_t=0; E1_f=1;// E1==0
		E2_t=0; E2_f=1;// E2==0
		E3_t=0; E3_f=1;// E3==0
		E4_t=1; E4_f=0;// E4==1
		#10;
		if(zero_t==0 && zero_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: zero LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: zero LINE 1");

		null_state();
		#10;

		//Testing Truth Table line 2
		E1_t=0; E1_f=1;// E1==0
		E2_t=0; E2_f=1;// E2==0
		E3_t=1; E3_f=0;// E3==1
		E4_t=0; E4_f=1;// E4==0
		#10;
		if(zero_t==0 && zero_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: zero LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: zero LINE 2");

		null_state();
		#10;

		//Testing Truth Table line 3
		E1_t=0; E1_f=1;// E1==0
		E2_t=0; E2_f=1;// E2==0
		E3_t=1; E3_f=0;// E3==1
		E4_t=1; E4_f=0;// E4==1
		#10;
		if(zero_t==0 && zero_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: zero LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: zero LINE 3");

		null_state();
		#10;

		//Testing Truth Table line 4
		E1_t=0; E1_f=1;// E1==0
		E2_t=1; E2_f=0;// E2==1
		E3_t=0; E3_f=1;// E3==0
		E4_t=0; E4_f=1;// E4==0
		#10;
		if(zero_t==0 && zero_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: zero LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: zero LINE 4");

		null_state();
		#10;

		//Testing Truth Table line 5
		E1_t=0; E1_f=1;// E1==0
		E2_t=1; E2_f=0;// E2==1
		E3_t=0; E3_f=1;// E3==0
		E4_t=1; E4_f=0;// E4==1
		#10;
		if(zero_t==0 && zero_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: zero LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: zero LINE 5");

		null_state();
		#10;

		//Testing Truth Table line 6
		E1_t=0; E1_f=1;// E1==0
		E2_t=1; E2_f=0;// E2==1
		E3_t=1; E3_f=0;// E3==1
		E4_t=0; E4_f=1;// E4==0
		#10;
		if(zero_t==0 && zero_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: zero LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: zero LINE 6");

		null_state();
		#10;

		//Testing Truth Table line 7
		E1_t=0; E1_f=1;// E1==0
		E2_t=1; E2_f=0;// E2==1
		E3_t=1; E3_f=0;// E3==1
		E4_t=1; E4_f=0;// E4==1
		#10;
		if(zero_t==0 && zero_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: zero LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: zero LINE 7");

		null_state();
		#10;

		//Testing Truth Table line 8
		E1_t=1; E1_f=0;// E1==1
		E2_t=0; E2_f=1;// E2==0
		E3_t=0; E3_f=1;// E3==0
		E4_t=0; E4_f=1;// E4==0
		#10;
		if(zero_t==0 && zero_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: zero LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: zero LINE 8");

		null_state();
		#10;

		//Testing Truth Table line 9
		E1_t=1; E1_f=0;// E1==1
		E2_t=0; E2_f=1;// E2==0
		E3_t=0; E3_f=1;// E3==0
		E4_t=1; E4_f=0;// E4==1
		#10;
		if(zero_t==0 && zero_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: zero LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: zero LINE 9");

		null_state();
		#10;

		//Testing Truth Table line 10
		E1_t=1; E1_f=0;// E1==1
		E2_t=0; E2_f=1;// E2==0
		E3_t=1; E3_f=0;// E3==1
		E4_t=0; E4_f=1;// E4==0
		#10;
		if(zero_t==0 && zero_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: zero LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: zero LINE 10");

		null_state();
		#10;

		//Testing Truth Table line 11
		E1_t=1; E1_f=0;// E1==1
		E2_t=0; E2_f=1;// E2==0
		E3_t=1; E3_f=0;// E3==1
		E4_t=1; E4_f=0;// E4==1
		#10;
		if(zero_t==0 && zero_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: zero LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: zero LINE 11");

		null_state();
		#10;

		//Testing Truth Table line 12
		E1_t=1; E1_f=0;// E1==1
		E2_t=1; E2_f=0;// E2==1
		E3_t=0; E3_f=1;// E3==0
		E4_t=0; E4_f=1;// E4==0
		#10;
		if(zero_t==0 && zero_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: zero LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: zero LINE 12");

		null_state();
		#10;

		//Testing Truth Table line 13
		E1_t=1; E1_f=0;// E1==1
		E2_t=1; E2_f=0;// E2==1
		E3_t=0; E3_f=1;// E3==0
		E4_t=1; E4_f=0;// E4==1
		#10;
		if(zero_t==0 && zero_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: zero LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: zero LINE 13");

		null_state();
		#10;

		//Testing Truth Table line 14
		E1_t=1; E1_f=0;// E1==1
		E2_t=1; E2_f=0;// E2==1
		E3_t=1; E3_f=0;// E3==1
		E4_t=0; E4_f=1;// E4==0
		#10;
		if(zero_t==0 && zero_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: zero LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: zero LINE 14");

		null_state();
		#10;

		//Testing Truth Table line 15
		E1_t=1; E1_f=0;// E1==1
		E2_t=1; E2_f=0;// E2==1
		E3_t=1; E3_f=0;// E3==1
		E4_t=1; E4_f=0;// E4==1
		#10;
		if(zero_t==0 && zero_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: zero LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: zero LINE 15");
	end
endmodule 
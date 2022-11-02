`timescale 1ns/1ps
module NCL_enable_addr_tb();
	reg A3_t, A3_f, A2_t, A2_f, A1_t, A1_f, A0_t, A0_f, PH0_t, PH0_f;
	wire O3_t, O3_f, O2_t, O2_f, O1_t, O1_f, O0_t, O0_f;

	NCL_enable_addr dut(
		A3_t, A3_f,
		A2_t, A2_f,
		A1_t, A1_f,
		A0_t, A0_f,
		PH0_t, PH0_f,
		O3_t, O3_f, 
		O2_t, O2_f, 
		O1_t, O1_f, 
		O0_t, O0_f
	);

	task null_state(); begin
		A3_t=0; A3_f=0; //A3==NULL
		A2_t=0; A2_f=0; //A2==NULL
		A1_t=0; A1_f=0; //A1==NULL
		A0_t=0; A0_f=0; //A0==NULL
		PH0_t=0; PH0_f=0; //PH0==NULL
		end
	endtask

	initial begin

		null_state();
		#10;

		//Testing Truth Table line 0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==N && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 0");
		if(O2_t==N && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 0");
		if(O1_t==N && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 0");
		if(O0_t==N && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 0");

		null_state();
		#10;

		//Testing Truth Table line 1
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 1");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 1");
		if(O1_t==0 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 1");
		if(O0_t==0 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 1");

		null_state();
		#10;

		//Testing Truth Table line 2
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 2");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 2");
		if(O1_t==0 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 2");
		if(O0_t==1 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 2");

		null_state();
		#10;

		//Testing Truth Table line 3
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 3");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 3");
		if(O1_t==1 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 3");
		if(O0_t==0 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 3");

		null_state();
		#10;

		//Testing Truth Table line 4
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 4");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 4");
		if(O1_t==1 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 4");
		if(O0_t==1 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 4");

		null_state();
		#10;

		//Testing Truth Table line 5
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 5");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 5");
		if(O1_t==0 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 5");
		if(O0_t==0 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 5");

		null_state();
		#10;

		//Testing Truth Table line 6
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 6");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 6");
		if(O1_t==0 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 6");
		if(O0_t==1 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 6");

		null_state();
		#10;

		//Testing Truth Table line 7
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 7");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 7");
		if(O1_t==1 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 7");
		if(O0_t==0 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 7");

		null_state();
		#10;

		//Testing Truth Table line 8
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 8");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 8");
		if(O1_t==1 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 8");
		if(O0_t==1 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 8");

		null_state();
		#10;

		//Testing Truth Table line 9
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 9");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 9");
		if(O1_t==0 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 9");
		if(O0_t==0 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 9");

		null_state();
		#10;

		//Testing Truth Table line 10
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 10");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 10");
		if(O1_t==0 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 10");
		if(O0_t==1 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 10");

		null_state();
		#10;

		//Testing Truth Table line 11
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 11");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 11");
		if(O1_t==1 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 11");
		if(O0_t==0 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 11");

		null_state();
		#10;

		//Testing Truth Table line 12
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 12");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 12");
		if(O1_t==1 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 12");
		if(O0_t==1 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 12");

		null_state();
		#10;

		//Testing Truth Table line 13
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 13");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 13");
		if(O1_t==0 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 13");
		if(O0_t==0 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 13");

		null_state();
		#10;

		//Testing Truth Table line 14
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 14");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 14");
		if(O1_t==0 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 14");
		if(O0_t==1 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 14");

		null_state();
		#10;

		//Testing Truth Table line 15
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 15");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 15");
		if(O1_t==1 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 15");
		if(O0_t==0 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 15");

		null_state();
		#10;

		//Testing Truth Table line 16
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 16");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 16");
		if(O1_t==1 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 16");
		if(O0_t==1 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 16");

		null_state();
		#10;

		//Testing Truth Table line 17
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 17");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 17");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 17");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 17");

		null_state();
		#10;

		//Testing Truth Table line 18
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 18");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 18");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 18");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 18");

		null_state();
		#10;

		//Testing Truth Table line 19
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 19");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 19");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 19");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 19");

		null_state();
		#10;

		//Testing Truth Table line 20
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 20");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 20");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 20");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 20");

		null_state();
		#10;

		//Testing Truth Table line 21
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 21");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 21");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 21");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 21");

		null_state();
		#10;

		//Testing Truth Table line 22
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 22");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 22");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 22");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 22");

		null_state();
		#10;

		//Testing Truth Table line 23
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 23");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 23");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 23");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 23");

		null_state();
		#10;

		//Testing Truth Table line 24
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 24");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 24");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 24");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 24");

		null_state();
		#10;

		//Testing Truth Table line 25
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 25");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 25");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 25");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 25");

		null_state();
		#10;

		//Testing Truth Table line 26
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 26");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 26");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 26");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 26");

		null_state();
		#10;

		//Testing Truth Table line 27
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 27");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 27");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 27");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 27");

		null_state();
		#10;

		//Testing Truth Table line 28
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 28");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 28");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 28");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 28");

		null_state();
		#10;

		//Testing Truth Table line 29
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 29");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 29");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 29");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 29");

		null_state();
		#10;

		//Testing Truth Table line 30
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 30");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 30");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 30");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 30");

		null_state();
		#10;

		//Testing Truth Table line 31
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		PH0_t=0; PH0_f=1;// PH0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 31");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 31");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 31");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 31");
	end
endmodule 
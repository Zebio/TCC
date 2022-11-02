`timescale 1ns/1ps
module mem_addr_inst_tb();
	reg PH1_t, PH1_f, I7_t, I7_f, I6_t, I6_f, A3_t, A3_f, A2_t, A2_f, A1_t, A1_f, A0_t, A0_f;
	wire O3_t, O3_f, O2_t, O2_f, O1_t, O1_f, O0_t, O0_f;

	mem_addr_inst dut(
		PH1_t, PH1_f,
		I7_t, I7_f,
		I6_t, I6_f,
		A3_t, A3_f,
		A2_t, A2_f,
		A1_t, A1_f,
		A0_t, A0_f,
		O3_t, O3_f, 
		O2_t, O2_f, 
		O1_t, O1_f, 
		O0_t, O0_f
	);

	task null_state(); begin
		PH1_t=0; PH1_f=0; //PH1==NULL
		I7_t=0; I7_f=0; //I7==NULL
		I6_t=0; I6_f=0; //I6==NULL
		A3_t=0; A3_f=0; //A3==NULL
		A2_t=0; A2_f=0; //A2==NULL
		A1_t=0; A1_f=0; //A1==NULL
		A0_t=0; A0_f=0; //A0==NULL
		end
	endtask

	initial begin

		null_state();
		#10;

		//Testing Truth Table line 0
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
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
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==N && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 1");
		if(O2_t==N && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 1");
		if(O1_t==N && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 1");
		if(O0_t==N && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 1");

		null_state();
		#10;

		//Testing Truth Table line 2
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==N && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 2");
		if(O2_t==N && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 2");
		if(O1_t==N && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 2");
		if(O0_t==N && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 2");

		null_state();
		#10;

		//Testing Truth Table line 3
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 3");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 3");
		if(O1_t==0 && O1_f==0)
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
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 4");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 4");
		if(O1_t==0 && O1_f==0)
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
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 5");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 5");
		if(O1_t==1 && O1_f==0)
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
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 6");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 6");
		if(O1_t==1 && O1_f==0)
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
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 7");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 7");
		if(O1_t==0 && O1_f==0)
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
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 8");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 8");
		if(O1_t==0 && O1_f==0)
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
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 9");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 9");
		if(O1_t==1 && O1_f==0)
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
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 10");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 10");
		if(O1_t==1 && O1_f==0)
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
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 11");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 11");
		if(O1_t==0 && O1_f==0)
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
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 12");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 12");
		if(O1_t==0 && O1_f==0)
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
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 13");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 13");
		if(O1_t==1 && O1_f==0)
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
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 14");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 14");
		if(O1_t==1 && O1_f==0)
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
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 15");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 15");
		if(O1_t==0 && O1_f==0)
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
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 16");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 16");
		if(O1_t==0 && O1_f==0)
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
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 17");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 17");
		if(O1_t==1 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 17");
		if(O0_t==0 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 17");

		null_state();
		#10;

		//Testing Truth Table line 18
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 18");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 18");
		if(O1_t==1 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 18");
		if(O0_t==1 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 18");

		null_state();
		#10;

		//Testing Truth Table line 19
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 19");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 19");
		if(O1_t==0 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 19");
		if(O0_t==0 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 19");

		null_state();
		#10;

		//Testing Truth Table line 20
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 20");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 20");
		if(O1_t==0 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 20");
		if(O0_t==1 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 20");

		null_state();
		#10;

		//Testing Truth Table line 21
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 21");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 21");
		if(O1_t==1 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 21");
		if(O0_t==0 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 21");

		null_state();
		#10;

		//Testing Truth Table line 22
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 22");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 22");
		if(O1_t==1 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 22");
		if(O0_t==1 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 22");

		null_state();
		#10;

		//Testing Truth Table line 23
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 23");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 23");
		if(O1_t==0 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 23");
		if(O0_t==0 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 23");

		null_state();
		#10;

		//Testing Truth Table line 24
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 24");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 24");
		if(O1_t==0 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 24");
		if(O0_t==1 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 24");

		null_state();
		#10;

		//Testing Truth Table line 25
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 25");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 25");
		if(O1_t==1 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 25");
		if(O0_t==0 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 25");

		null_state();
		#10;

		//Testing Truth Table line 26
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==0 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 26");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 26");
		if(O1_t==1 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 26");
		if(O0_t==1 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 26");

		null_state();
		#10;

		//Testing Truth Table line 27
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 27");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 27");
		if(O1_t==0 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 27");
		if(O0_t==0 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 27");

		null_state();
		#10;

		//Testing Truth Table line 28
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 28");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 28");
		if(O1_t==0 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 28");
		if(O0_t==1 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 28");

		null_state();
		#10;

		//Testing Truth Table line 29
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 29");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 29");
		if(O1_t==1 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 29");
		if(O0_t==0 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 29");

		null_state();
		#10;

		//Testing Truth Table line 30
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 30");
		if(O2_t==0 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 30");
		if(O1_t==1 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 30");
		if(O0_t==1 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 30");

		null_state();
		#10;

		//Testing Truth Table line 31
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 31");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 31");
		if(O1_t==0 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 31");
		if(O0_t==0 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 31");

		null_state();
		#10;

		//Testing Truth Table line 32
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 32");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 32");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 32");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 32");
		if(O1_t==0 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 32");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 32");
		if(O0_t==1 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 32");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 32");

		null_state();
		#10;

		//Testing Truth Table line 33
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 33");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 33");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 33");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 33");
		if(O1_t==1 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 33");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 33");
		if(O0_t==0 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 33");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 33");

		null_state();
		#10;

		//Testing Truth Table line 34
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==1 && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 34");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 34");
		if(O2_t==1 && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 34");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 34");
		if(O1_t==1 && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 34");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 34");
		if(O0_t==1 && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 34");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 34");

		null_state();
		#10;

		//Testing Truth Table line 35
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 35");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 35");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 35");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 35");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 35");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 35");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 35");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 35");

		null_state();
		#10;

		//Testing Truth Table line 36
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 36");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 36");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 36");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 36");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 36");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 36");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 36");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 36");

		null_state();
		#10;

		//Testing Truth Table line 37
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 37");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 37");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 37");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 37");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 37");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 37");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 37");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 37");

		null_state();
		#10;

		//Testing Truth Table line 38
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 38");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 38");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 38");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 38");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 38");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 38");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 38");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 38");

		null_state();
		#10;

		//Testing Truth Table line 39
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 39");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 39");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 39");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 39");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 39");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 39");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 39");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 39");

		null_state();
		#10;

		//Testing Truth Table line 40
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 40");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 40");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 40");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 40");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 40");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 40");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 40");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 40");

		null_state();
		#10;

		//Testing Truth Table line 41
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 41");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 41");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 41");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 41");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 41");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 41");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 41");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 41");

		null_state();
		#10;

		//Testing Truth Table line 42
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 42");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 42");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 42");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 42");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 42");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 42");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 42");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 42");

		null_state();
		#10;

		//Testing Truth Table line 43
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 43");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 43");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 43");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 43");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 43");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 43");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 43");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 43");

		null_state();
		#10;

		//Testing Truth Table line 44
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 44");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 44");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 44");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 44");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 44");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 44");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 44");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 44");

		null_state();
		#10;

		//Testing Truth Table line 45
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 45");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 45");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 45");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 45");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 45");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 45");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 45");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 45");

		null_state();
		#10;

		//Testing Truth Table line 46
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 46");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 46");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 46");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 46");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 46");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 46");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 46");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 46");

		null_state();
		#10;

		//Testing Truth Table line 47
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 47");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 47");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 47");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 47");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 47");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 47");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 47");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 47");

		null_state();
		#10;

		//Testing Truth Table line 48
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 48");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 48");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 48");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 48");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 48");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 48");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 48");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 48");

		null_state();
		#10;

		//Testing Truth Table line 49
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 49");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 49");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 49");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 49");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 49");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 49");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 49");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 49");

		null_state();
		#10;

		//Testing Truth Table line 50
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 50");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 50");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 50");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 50");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 50");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 50");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 50");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 50");

		null_state();
		#10;

		//Testing Truth Table line 51
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 51");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 51");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 51");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 51");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 51");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 51");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 51");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 51");

		null_state();
		#10;

		//Testing Truth Table line 52
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 52");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 52");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 52");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 52");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 52");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 52");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 52");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 52");

		null_state();
		#10;

		//Testing Truth Table line 53
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 53");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 53");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 53");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 53");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 53");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 53");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 53");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 53");

		null_state();
		#10;

		//Testing Truth Table line 54
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 54");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 54");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 54");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 54");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 54");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 54");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 54");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 54");

		null_state();
		#10;

		//Testing Truth Table line 55
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 55");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 55");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 55");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 55");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 55");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 55");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 55");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 55");

		null_state();
		#10;

		//Testing Truth Table line 56
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 56");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 56");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 56");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 56");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 56");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 56");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 56");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 56");

		null_state();
		#10;

		//Testing Truth Table line 57
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 57");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 57");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 57");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 57");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 57");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 57");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 57");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 57");

		null_state();
		#10;

		//Testing Truth Table line 58
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 58");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 58");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 58");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 58");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 58");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 58");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 58");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 58");

		null_state();
		#10;

		//Testing Truth Table line 59
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 59");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 59");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 59");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 59");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 59");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 59");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 59");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 59");

		null_state();
		#10;

		//Testing Truth Table line 60
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 60");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 60");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 60");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 60");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 60");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 60");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 60");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 60");

		null_state();
		#10;

		//Testing Truth Table line 61
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 61");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 61");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 61");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 61");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 61");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 61");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 61");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 61");

		null_state();
		#10;

		//Testing Truth Table line 62
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 62");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 62");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 62");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 62");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 62");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 62");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 62");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 62");

		null_state();
		#10;

		//Testing Truth Table line 63
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 63");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 63");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 63");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 63");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 63");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 63");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 63");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 63");

		null_state();
		#10;

		//Testing Truth Table line 64
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 64");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 64");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 64");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 64");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 64");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 64");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 64");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 64");

		null_state();
		#10;

		//Testing Truth Table line 65
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 65");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 65");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 65");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 65");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 65");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 65");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 65");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 65");

		null_state();
		#10;

		//Testing Truth Table line 66
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 66");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 66");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 66");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 66");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 66");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 66");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 66");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 66");

		null_state();
		#10;

		//Testing Truth Table line 67
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 67");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 67");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 67");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 67");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 67");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 67");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 67");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 67");

		null_state();
		#10;

		//Testing Truth Table line 68
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 68");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 68");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 68");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 68");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 68");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 68");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 68");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 68");

		null_state();
		#10;

		//Testing Truth Table line 69
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 69");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 69");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 69");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 69");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 69");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 69");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 69");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 69");

		null_state();
		#10;

		//Testing Truth Table line 70
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 70");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 70");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 70");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 70");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 70");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 70");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 70");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 70");

		null_state();
		#10;

		//Testing Truth Table line 71
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 71");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 71");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 71");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 71");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 71");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 71");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 71");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 71");

		null_state();
		#10;

		//Testing Truth Table line 72
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 72");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 72");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 72");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 72");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 72");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 72");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 72");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 72");

		null_state();
		#10;

		//Testing Truth Table line 73
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 73");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 73");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 73");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 73");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 73");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 73");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 73");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 73");

		null_state();
		#10;

		//Testing Truth Table line 74
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 74");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 74");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 74");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 74");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 74");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 74");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 74");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 74");

		null_state();
		#10;

		//Testing Truth Table line 75
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 75");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 75");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 75");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 75");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 75");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 75");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 75");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 75");

		null_state();
		#10;

		//Testing Truth Table line 76
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 76");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 76");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 76");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 76");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 76");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 76");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 76");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 76");

		null_state();
		#10;

		//Testing Truth Table line 77
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 77");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 77");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 77");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 77");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 77");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 77");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 77");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 77");

		null_state();
		#10;

		//Testing Truth Table line 78
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 78");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 78");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 78");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 78");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 78");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 78");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 78");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 78");

		null_state();
		#10;

		//Testing Truth Table line 79
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 79");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 79");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 79");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 79");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 79");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 79");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 79");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 79");

		null_state();
		#10;

		//Testing Truth Table line 80
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 80");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 80");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 80");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 80");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 80");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 80");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 80");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 80");

		null_state();
		#10;

		//Testing Truth Table line 81
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 81");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 81");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 81");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 81");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 81");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 81");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 81");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 81");

		null_state();
		#10;

		//Testing Truth Table line 82
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 82");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 82");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 82");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 82");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 82");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 82");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 82");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 82");

		null_state();
		#10;

		//Testing Truth Table line 83
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 83");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 83");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 83");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 83");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 83");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 83");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 83");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 83");

		null_state();
		#10;

		//Testing Truth Table line 84
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 84");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 84");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 84");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 84");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 84");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 84");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 84");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 84");

		null_state();
		#10;

		//Testing Truth Table line 85
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 85");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 85");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 85");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 85");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 85");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 85");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 85");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 85");

		null_state();
		#10;

		//Testing Truth Table line 86
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 86");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 86");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 86");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 86");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 86");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 86");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 86");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 86");

		null_state();
		#10;

		//Testing Truth Table line 87
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 87");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 87");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 87");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 87");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 87");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 87");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 87");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 87");

		null_state();
		#10;

		//Testing Truth Table line 88
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 88");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 88");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 88");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 88");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 88");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 88");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 88");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 88");

		null_state();
		#10;

		//Testing Truth Table line 89
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 89");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 89");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 89");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 89");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 89");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 89");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 89");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 89");

		null_state();
		#10;

		//Testing Truth Table line 90
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 90");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 90");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 90");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 90");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 90");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 90");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 90");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 90");

		null_state();
		#10;

		//Testing Truth Table line 91
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 91");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 91");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 91");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 91");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 91");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 91");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 91");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 91");

		null_state();
		#10;

		//Testing Truth Table line 92
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 92");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 92");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 92");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 92");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 92");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 92");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 92");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 92");

		null_state();
		#10;

		//Testing Truth Table line 93
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 93");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 93");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 93");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 93");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 93");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 93");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 93");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 93");

		null_state();
		#10;

		//Testing Truth Table line 94
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 94");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 94");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 94");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 94");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 94");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 94");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 94");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 94");

		null_state();
		#10;

		//Testing Truth Table line 95
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 95");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 95");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 95");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 95");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 95");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 95");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 95");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 95");

		null_state();
		#10;

		//Testing Truth Table line 96
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 96");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 96");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 96");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 96");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 96");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 96");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 96");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 96");

		null_state();
		#10;

		//Testing Truth Table line 97
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 97");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 97");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 97");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 97");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 97");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 97");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 97");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 97");

		null_state();
		#10;

		//Testing Truth Table line 98
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 98");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 98");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 98");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 98");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 98");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 98");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 98");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 98");

		null_state();
		#10;

		//Testing Truth Table line 99
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 99");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 99");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 99");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 99");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 99");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 99");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 99");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 99");

		null_state();
		#10;

		//Testing Truth Table line 100
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 100");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 100");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 100");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 100");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 100");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 100");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 100");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 100");

		null_state();
		#10;

		//Testing Truth Table line 101
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 101");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 101");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 101");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 101");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 101");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 101");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 101");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 101");

		null_state();
		#10;

		//Testing Truth Table line 102
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 102");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 102");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 102");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 102");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 102");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 102");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 102");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 102");

		null_state();
		#10;

		//Testing Truth Table line 103
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 103");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 103");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 103");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 103");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 103");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 103");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 103");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 103");

		null_state();
		#10;

		//Testing Truth Table line 104
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 104");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 104");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 104");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 104");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 104");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 104");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 104");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 104");

		null_state();
		#10;

		//Testing Truth Table line 105
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 105");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 105");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 105");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 105");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 105");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 105");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 105");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 105");

		null_state();
		#10;

		//Testing Truth Table line 106
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 106");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 106");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 106");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 106");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 106");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 106");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 106");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 106");

		null_state();
		#10;

		//Testing Truth Table line 107
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 107");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 107");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 107");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 107");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 107");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 107");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 107");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 107");

		null_state();
		#10;

		//Testing Truth Table line 108
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 108");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 108");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 108");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 108");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 108");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 108");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 108");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 108");

		null_state();
		#10;

		//Testing Truth Table line 109
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 109");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 109");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 109");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 109");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 109");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 109");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 109");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 109");

		null_state();
		#10;

		//Testing Truth Table line 110
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 110");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 110");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 110");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 110");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 110");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 110");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 110");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 110");

		null_state();
		#10;

		//Testing Truth Table line 111
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 111");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 111");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 111");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 111");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 111");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 111");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 111");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 111");

		null_state();
		#10;

		//Testing Truth Table line 112
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 112");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 112");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 112");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 112");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 112");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 112");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 112");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 112");

		null_state();
		#10;

		//Testing Truth Table line 113
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 113");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 113");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 113");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 113");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 113");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 113");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 113");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 113");

		null_state();
		#10;

		//Testing Truth Table line 114
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 114");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 114");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 114");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 114");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 114");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 114");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 114");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 114");

		null_state();
		#10;

		//Testing Truth Table line 115
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 115");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 115");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 115");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 115");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 115");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 115");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 115");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 115");

		null_state();
		#10;

		//Testing Truth Table line 116
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 116");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 116");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 116");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 116");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 116");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 116");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 116");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 116");

		null_state();
		#10;

		//Testing Truth Table line 117
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 117");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 117");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 117");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 117");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 117");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 117");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 117");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 117");

		null_state();
		#10;

		//Testing Truth Table line 118
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 118");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 118");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 118");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 118");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 118");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 118");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 118");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 118");

		null_state();
		#10;

		//Testing Truth Table line 119
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 119");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 119");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 119");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 119");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 119");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 119");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 119");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 119");

		null_state();
		#10;

		//Testing Truth Table line 120
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 120");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 120");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 120");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 120");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 120");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 120");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 120");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 120");

		null_state();
		#10;

		//Testing Truth Table line 121
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 121");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 121");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 121");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 121");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 121");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 121");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 121");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 121");

		null_state();
		#10;

		//Testing Truth Table line 122
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 122");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 122");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 122");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 122");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 122");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 122");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 122");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 122");

		null_state();
		#10;

		//Testing Truth Table line 123
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 123");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 123");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 123");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 123");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 123");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 123");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 123");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 123");

		null_state();
		#10;

		//Testing Truth Table line 124
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 124");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 124");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 124");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 124");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 124");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 124");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 124");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 124");

		null_state();
		#10;

		//Testing Truth Table line 125
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 125");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 125");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 125");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 125");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 125");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 125");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 125");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 125");

		null_state();
		#10;

		//Testing Truth Table line 126
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 126");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 126");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 126");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 126");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 126");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 126");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 126");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 126");

		null_state();
		#10;

		//Testing Truth Table line 127
		PH1_t=0; PH1_f=1;// PH1==0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		A3_t=0; A3_f=1;// A3==0
		A2_t=0; A2_f=1;// A2==0
		A1_t=0; A1_f=1;// A1==0
		A0_t=0; A0_f=1;// A0==0
		#10;
		if(O3_t==- && O3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O3 LINE 127");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O3 LINE 127");
		if(O2_t==- && O2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O2 LINE 127");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O2 LINE 127");
		if(O1_t==- && O1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O1 LINE 127");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O1 LINE 127");
		if(O0_t==- && O0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: O0 LINE 127");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: O0 LINE 127");
	end
endmodule 
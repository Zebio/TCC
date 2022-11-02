`timescale 1ns/1ps
module controller_tb();
	reg I7_t, I7_f, I6_t, I6_f, I5_t, I5_f, I4_t, I4_f;
	wire C1A1_t, C1A1_f, C1A0_t, C1A0_f, C1O_t, C1O_f;

	controller dut(
		I7_t, I7_f,
		I6_t, I6_f,
		I5_t, I5_f,
		I4_t, I4_f,
		C1A1_t, C1A1_f, 
		C1A0_t, C1A0_f, 
		C1O_t, C1O_f
	);

	task null_state(); begin
		I7_t=0; I7_f=0; //I7==NULL
		I6_t=0; I6_f=0; //I6==NULL
		I5_t=0; I5_f=0; //I5==NULL
		I4_t=0; I4_f=0; //I4==NULL
		end
	endtask

	initial begin

		null_state();
		#10;

		//Testing Truth Table line 0
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		#10;
		if(C1A1_t==N && C1A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A1 LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A1 LINE 0");
		if(C1A0_t==N && C1A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A0 LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A0 LINE 0");
		if(C1O_t==N && C1O_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1O LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1O LINE 0");

		null_state();
		#10;

		//Testing Truth Table line 1
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		#10;
		if(C1A1_t==0 && C1A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A1 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A1 LINE 1");
		if(C1A0_t==0 && C1A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A0 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A0 LINE 1");
		if(C1O_t==1 && C1O_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1O LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1O LINE 1");

		null_state();
		#10;

		//Testing Truth Table line 2
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		#10;
		if(C1A1_t==0 && C1A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A1 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A1 LINE 2");
		if(C1A0_t==1 && C1A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A0 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A0 LINE 2");
		if(C1O_t==1 && C1O_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1O LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1O LINE 2");

		null_state();
		#10;

		//Testing Truth Table line 3
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		#10;
		if(C1A1_t==1 && C1A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A1 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A1 LINE 3");
		if(C1A0_t==0 && C1A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A0 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A0 LINE 3");
		if(C1O_t==1 && C1O_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1O LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1O LINE 3");

		null_state();
		#10;

		//Testing Truth Table line 4
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		#10;
		if(C1A1_t==1 && C1A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A1 LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A1 LINE 4");
		if(C1A0_t==1 && C1A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A0 LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A0 LINE 4");
		if(C1O_t==1 && C1O_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1O LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1O LINE 4");

		null_state();
		#10;

		//Testing Truth Table line 5
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		#10;
		if(C1A1_t==0 && C1A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A1 LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A1 LINE 5");
		if(C1A0_t==0 && C1A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A0 LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A0 LINE 5");
		if(C1O_t==0 && C1O_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1O LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1O LINE 5");

		null_state();
		#10;

		//Testing Truth Table line 6
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		#10;
		if(C1A1_t==0 && C1A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A1 LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A1 LINE 6");
		if(C1A0_t==1 && C1A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A0 LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A0 LINE 6");
		if(C1O_t==0 && C1O_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1O LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1O LINE 6");

		null_state();
		#10;

		//Testing Truth Table line 7
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		#10;
		if(C1A1_t==1 && C1A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A1 LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A1 LINE 7");
		if(C1A0_t==0 && C1A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A0 LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A0 LINE 7");
		if(C1O_t==0 && C1O_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1O LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1O LINE 7");

		null_state();
		#10;

		//Testing Truth Table line 8
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		#10;
		if(C1A1_t==1 && C1A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A1 LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A1 LINE 8");
		if(C1A0_t==1 && C1A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A0 LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A0 LINE 8");
		if(C1O_t==0 && C1O_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1O LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1O LINE 8");

		null_state();
		#10;

		//Testing Truth Table line 9
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		#10;
		if(C1A1_t==N && C1A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A1 LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A1 LINE 9");
		if(C1A0_t==N && C1A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A0 LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A0 LINE 9");
		if(C1O_t==N && C1O_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1O LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1O LINE 9");

		null_state();
		#10;

		//Testing Truth Table line 10
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		#10;
		if(C1A1_t==- && C1A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A1 LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A1 LINE 10");
		if(C1A0_t==- && C1A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A0 LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A0 LINE 10");
		if(C1O_t==- && C1O_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1O LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1O LINE 10");

		null_state();
		#10;

		//Testing Truth Table line 11
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		#10;
		if(C1A1_t==- && C1A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A1 LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A1 LINE 11");
		if(C1A0_t==- && C1A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A0 LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A0 LINE 11");
		if(C1O_t==- && C1O_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1O LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1O LINE 11");

		null_state();
		#10;

		//Testing Truth Table line 12
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		#10;
		if(C1A1_t==- && C1A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A1 LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A1 LINE 12");
		if(C1A0_t==- && C1A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A0 LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A0 LINE 12");
		if(C1O_t==- && C1O_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1O LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1O LINE 12");

		null_state();
		#10;

		//Testing Truth Table line 13
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		#10;
		if(C1A1_t==- && C1A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A1 LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A1 LINE 13");
		if(C1A0_t==- && C1A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A0 LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A0 LINE 13");
		if(C1O_t==- && C1O_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1O LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1O LINE 13");

		null_state();
		#10;

		//Testing Truth Table line 14
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		#10;
		if(C1A1_t==- && C1A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A1 LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A1 LINE 14");
		if(C1A0_t==- && C1A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A0 LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A0 LINE 14");
		if(C1O_t==- && C1O_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1O LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1O LINE 14");

		null_state();
		#10;

		//Testing Truth Table line 15
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		#10;
		if(C1A1_t==- && C1A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A1 LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A1 LINE 15");
		if(C1A0_t==- && C1A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1A0 LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1A0 LINE 15");
		if(C1O_t==- && C1O_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1O LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1O LINE 15");
	end
endmodule 
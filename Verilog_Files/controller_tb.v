`timescale 1ns/1ps
module controller_tb();
	reg I7_t, I7_f, I6_t, I6_f, I5_t, I5_f, I4_t, I4_f, I3_t, I3_f, I2_t, I2_f, I1_t, I1_f, I0_t, I0_f;
	wire C1i_t, C1i_f, C11_t, C11_f, C10_t, C10_f, C2i_t, C2i_f, C21_t, C21_f, C20_t, C20_f, C3i_t, C3i_f, C31_t, C31_f, C30_t, C30_f, Mr_t, Mr_f;

	controller dut(
		I7_t, I7_f,
		I6_t, I6_f,
		I5_t, I5_f,
		I4_t, I4_f,
		I3_t, I3_f,
		I2_t, I2_f,
		I1_t, I1_f,
		I0_t, I0_f,
		C1i_t, C1i_f, 
		C11_t, C11_f, 
		C10_t, C10_f, 
		C2i_t, C2i_f, 
		C21_t, C21_f, 
		C20_t, C20_f, 
		C3i_t, C3i_f, 
		C31_t, C31_f, 
		C30_t, C30_f, 
		Mr_t, Mr_f
	);

	task null_state(); begin
		I7_t=0; I7_f=0; //I7==NULL
		I6_t=0; I6_f=0; //I6==NULL
		I5_t=0; I5_f=0; //I5==NULL
		I4_t=0; I4_f=0; //I4==NULL
		I3_t=0; I3_f=0; //I3==NULL
		I2_t=0; I2_f=0; //I2==NULL
		I1_t=0; I1_f=0; //I1==NULL
		I0_t=0; I0_f=0; //I0==NULL
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
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==N && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 0");
		if(C11_t==N && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 0");
		if(C10_t==N && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 0");
		if(C2i_t==N && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 0");
		if(C21_t==N && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 0");
		if(C20_t==N && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 0");
		if(C3i_t==N && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 0");
		if(C31_t==N && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 0");
		if(C30_t==N && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 0");
		if(Mr_t==N && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 0");

		null_state();
		#10;

		//Testing Truth Table line 1
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 1");
		if(C11_t==0 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 1");
		if(C10_t==0 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 1");
		if(C2i_t==N && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 1");
		if(C21_t==N && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 1");
		if(C20_t==N && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 1");
		if(C3i_t==N && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 1");
		if(C31_t==N && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 1");
		if(C30_t==N && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 1");
		if(Mr_t==0 && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 1");

		null_state();
		#10;

		//Testing Truth Table line 2
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 2");
		if(C11_t==0 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 2");
		if(C10_t==1 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 2");
		if(C2i_t==N && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 2");
		if(C21_t==N && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 2");
		if(C20_t==N && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 2");
		if(C3i_t==N && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 2");
		if(C31_t==N && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 2");
		if(C30_t==N && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 2");
		if(Mr_t==0 && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 2");

		null_state();
		#10;

		//Testing Truth Table line 3
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 3");
		if(C11_t==1 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 3");
		if(C10_t==0 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 3");
		if(C2i_t==N && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 3");
		if(C21_t==N && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 3");
		if(C20_t==N && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 3");
		if(C3i_t==N && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 3");
		if(C31_t==N && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 3");
		if(C30_t==N && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 3");
		if(Mr_t==0 && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 3");

		null_state();
		#10;

		//Testing Truth Table line 4
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 4");
		if(C11_t==1 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 4");
		if(C10_t==1 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 4");
		if(C2i_t==N && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 4");
		if(C21_t==N && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 4");
		if(C20_t==N && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 4");
		if(C3i_t==N && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 4");
		if(C31_t==N && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 4");
		if(C30_t==N && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 4");
		if(Mr_t==0 && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 4");

		null_state();
		#10;

		//Testing Truth Table line 5
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==0 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 5");
		if(C11_t==0 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 5");
		if(C10_t==0 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 5");
		if(C2i_t==N && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 5");
		if(C21_t==N && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 5");
		if(C20_t==N && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 5");
		if(C3i_t==N && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 5");
		if(C31_t==N && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 5");
		if(C30_t==N && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 5");
		if(Mr_t==1 && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 5");

		null_state();
		#10;

		//Testing Truth Table line 6
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==0 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 6");
		if(C11_t==0 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 6");
		if(C10_t==1 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 6");
		if(C2i_t==N && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 6");
		if(C21_t==N && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 6");
		if(C20_t==N && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 6");
		if(C3i_t==N && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 6");
		if(C31_t==N && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 6");
		if(C30_t==N && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 6");
		if(Mr_t==1 && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 6");

		null_state();
		#10;

		//Testing Truth Table line 7
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==0 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 7");
		if(C11_t==1 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 7");
		if(C10_t==0 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 7");
		if(C2i_t==N && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 7");
		if(C21_t==N && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 7");
		if(C20_t==N && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 7");
		if(C3i_t==N && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 7");
		if(C31_t==N && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 7");
		if(C30_t==N && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 7");
		if(Mr_t==1 && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 7");

		null_state();
		#10;

		//Testing Truth Table line 8
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==0 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 8");
		if(C11_t==1 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 8");
		if(C10_t==1 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 8");
		if(C2i_t==N && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 8");
		if(C21_t==N && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 8");
		if(C20_t==N && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 8");
		if(C3i_t==N && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 8");
		if(C31_t==N && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 8");
		if(C30_t==N && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 8");
		if(Mr_t==1 && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 8");

		null_state();
		#10;

		//Testing Truth Table line 9
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 9");
		if(C11_t==0 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 9");
		if(C10_t==0 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 9");
		if(C2i_t==1 && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 9");
		if(C21_t==0 && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 9");
		if(C20_t==0 && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 9");
		if(C3i_t==0 && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 9");
		if(C31_t==0 && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 9");
		if(C30_t==0 && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 9");
		if(Mr_t==N && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 9");

		null_state();
		#10;

		//Testing Truth Table line 10
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 10");
		if(C11_t==0 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 10");
		if(C10_t==0 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 10");
		if(C2i_t==1 && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 10");
		if(C21_t==0 && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 10");
		if(C20_t==1 && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 10");
		if(C3i_t==0 && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 10");
		if(C31_t==0 && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 10");
		if(C30_t==1 && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 10");
		if(Mr_t==N && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 10");

		null_state();
		#10;

		//Testing Truth Table line 11
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 11");
		if(C11_t==0 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 11");
		if(C10_t==0 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 11");
		if(C2i_t==1 && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 11");
		if(C21_t==1 && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 11");
		if(C20_t==0 && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 11");
		if(C3i_t==0 && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 11");
		if(C31_t==1 && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 11");
		if(C30_t==0 && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 11");
		if(Mr_t==N && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 11");

		null_state();
		#10;

		//Testing Truth Table line 12
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 12");
		if(C11_t==0 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 12");
		if(C10_t==0 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 12");
		if(C2i_t==1 && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 12");
		if(C21_t==1 && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 12");
		if(C20_t==1 && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 12");
		if(C3i_t==0 && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 12");
		if(C31_t==1 && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 12");
		if(C30_t==1 && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 12");
		if(Mr_t==N && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 12");

		null_state();
		#10;

		//Testing Truth Table line 13
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 13");
		if(C11_t==0 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 13");
		if(C10_t==1 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 13");
		if(C2i_t==1 && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 13");
		if(C21_t==0 && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 13");
		if(C20_t==0 && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 13");
		if(C3i_t==0 && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 13");
		if(C31_t==0 && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 13");
		if(C30_t==0 && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 13");
		if(Mr_t==N && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 13");

		null_state();
		#10;

		//Testing Truth Table line 14
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 14");
		if(C11_t==0 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 14");
		if(C10_t==1 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 14");
		if(C2i_t==1 && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 14");
		if(C21_t==0 && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 14");
		if(C20_t==1 && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 14");
		if(C3i_t==0 && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 14");
		if(C31_t==0 && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 14");
		if(C30_t==1 && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 14");
		if(Mr_t==N && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 14");

		null_state();
		#10;

		//Testing Truth Table line 15
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 15");
		if(C11_t==0 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 15");
		if(C10_t==1 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 15");
		if(C2i_t==1 && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 15");
		if(C21_t==1 && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 15");
		if(C20_t==0 && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 15");
		if(C3i_t==0 && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 15");
		if(C31_t==1 && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 15");
		if(C30_t==0 && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 15");
		if(Mr_t==N && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 15");

		null_state();
		#10;

		//Testing Truth Table line 16
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 16");
		if(C11_t==0 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 16");
		if(C10_t==1 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 16");
		if(C2i_t==1 && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 16");
		if(C21_t==1 && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 16");
		if(C20_t==1 && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 16");
		if(C3i_t==0 && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 16");
		if(C31_t==1 && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 16");
		if(C30_t==1 && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 16");
		if(Mr_t==N && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 16");

		null_state();
		#10;

		//Testing Truth Table line 17
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 17");
		if(C11_t==1 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 17");
		if(C10_t==0 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 17");
		if(C2i_t==1 && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 17");
		if(C21_t==0 && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 17");
		if(C20_t==0 && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 17");
		if(C3i_t==0 && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 17");
		if(C31_t==0 && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 17");
		if(C30_t==0 && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 17");
		if(Mr_t==N && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 17");

		null_state();
		#10;

		//Testing Truth Table line 18
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 18");
		if(C11_t==1 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 18");
		if(C10_t==0 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 18");
		if(C2i_t==1 && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 18");
		if(C21_t==0 && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 18");
		if(C20_t==1 && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 18");
		if(C3i_t==0 && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 18");
		if(C31_t==0 && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 18");
		if(C30_t==1 && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 18");
		if(Mr_t==N && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 18");

		null_state();
		#10;

		//Testing Truth Table line 19
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 19");
		if(C11_t==1 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 19");
		if(C10_t==0 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 19");
		if(C2i_t==1 && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 19");
		if(C21_t==1 && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 19");
		if(C20_t==0 && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 19");
		if(C3i_t==0 && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 19");
		if(C31_t==1 && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 19");
		if(C30_t==0 && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 19");
		if(Mr_t==N && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 19");

		null_state();
		#10;

		//Testing Truth Table line 20
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 20");
		if(C11_t==1 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 20");
		if(C10_t==0 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 20");
		if(C2i_t==1 && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 20");
		if(C21_t==1 && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 20");
		if(C20_t==1 && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 20");
		if(C3i_t==0 && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 20");
		if(C31_t==1 && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 20");
		if(C30_t==1 && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 20");
		if(Mr_t==N && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 20");

		null_state();
		#10;

		//Testing Truth Table line 21
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 21");
		if(C11_t==1 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 21");
		if(C10_t==1 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 21");
		if(C2i_t==1 && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 21");
		if(C21_t==0 && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 21");
		if(C20_t==0 && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 21");
		if(C3i_t==0 && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 21");
		if(C31_t==0 && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 21");
		if(C30_t==0 && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 21");
		if(Mr_t==N && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 21");

		null_state();
		#10;

		//Testing Truth Table line 22
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 22");
		if(C11_t==1 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 22");
		if(C10_t==1 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 22");
		if(C2i_t==1 && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 22");
		if(C21_t==0 && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 22");
		if(C20_t==1 && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 22");
		if(C3i_t==0 && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 22");
		if(C31_t==0 && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 22");
		if(C30_t==1 && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 22");
		if(Mr_t==N && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 22");

		null_state();
		#10;

		//Testing Truth Table line 23
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 23");
		if(C11_t==1 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 23");
		if(C10_t==1 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 23");
		if(C2i_t==1 && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 23");
		if(C21_t==1 && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 23");
		if(C20_t==0 && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 23");
		if(C3i_t==0 && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 23");
		if(C31_t==1 && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 23");
		if(C30_t==0 && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 23");
		if(Mr_t==N && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 23");

		null_state();
		#10;

		//Testing Truth Table line 24
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==1 && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 24");
		if(C11_t==1 && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 24");
		if(C10_t==1 && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 24");
		if(C2i_t==1 && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 24");
		if(C21_t==1 && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 24");
		if(C20_t==1 && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 24");
		if(C3i_t==0 && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 24");
		if(C31_t==1 && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 24");
		if(C30_t==1 && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 24");
		if(Mr_t==N && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 24");

		null_state();
		#10;

		//Testing Truth Table line 25
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 25");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 25");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 25");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 25");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 25");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 25");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 25");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 25");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 25");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 25");

		null_state();
		#10;

		//Testing Truth Table line 26
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 26");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 26");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 26");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 26");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 26");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 26");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 26");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 26");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 26");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 26");

		null_state();
		#10;

		//Testing Truth Table line 27
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 27");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 27");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 27");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 27");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 27");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 27");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 27");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 27");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 27");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 27");

		null_state();
		#10;

		//Testing Truth Table line 28
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 28");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 28");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 28");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 28");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 28");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 28");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 28");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 28");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 28");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 28");

		null_state();
		#10;

		//Testing Truth Table line 29
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 29");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 29");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 29");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 29");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 29");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 29");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 29");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 29");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 29");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 29");

		null_state();
		#10;

		//Testing Truth Table line 30
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 30");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 30");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 30");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 30");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 30");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 30");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 30");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 30");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 30");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 30");

		null_state();
		#10;

		//Testing Truth Table line 31
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 31");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 31");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 31");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 31");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 31");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 31");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 31");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 31");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 31");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 31");

		null_state();
		#10;

		//Testing Truth Table line 32
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 32");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 32");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 32");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 32");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 32");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 32");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 32");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 32");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 32");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 32");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 32");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 32");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 32");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 32");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 32");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 32");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 32");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 32");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 32");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 32");

		null_state();
		#10;

		//Testing Truth Table line 33
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 33");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 33");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 33");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 33");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 33");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 33");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 33");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 33");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 33");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 33");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 33");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 33");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 33");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 33");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 33");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 33");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 33");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 33");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 33");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 33");

		null_state();
		#10;

		//Testing Truth Table line 34
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 34");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 34");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 34");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 34");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 34");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 34");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 34");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 34");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 34");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 34");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 34");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 34");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 34");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 34");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 34");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 34");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 34");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 34");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 34");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 34");

		null_state();
		#10;

		//Testing Truth Table line 35
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 35");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 35");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 35");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 35");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 35");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 35");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 35");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 35");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 35");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 35");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 35");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 35");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 35");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 35");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 35");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 35");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 35");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 35");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 35");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 35");

		null_state();
		#10;

		//Testing Truth Table line 36
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 36");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 36");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 36");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 36");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 36");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 36");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 36");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 36");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 36");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 36");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 36");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 36");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 36");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 36");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 36");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 36");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 36");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 36");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 36");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 36");

		null_state();
		#10;

		//Testing Truth Table line 37
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 37");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 37");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 37");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 37");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 37");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 37");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 37");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 37");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 37");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 37");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 37");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 37");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 37");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 37");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 37");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 37");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 37");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 37");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 37");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 37");

		null_state();
		#10;

		//Testing Truth Table line 38
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 38");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 38");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 38");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 38");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 38");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 38");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 38");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 38");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 38");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 38");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 38");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 38");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 38");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 38");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 38");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 38");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 38");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 38");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 38");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 38");

		null_state();
		#10;

		//Testing Truth Table line 39
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 39");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 39");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 39");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 39");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 39");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 39");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 39");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 39");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 39");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 39");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 39");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 39");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 39");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 39");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 39");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 39");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 39");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 39");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 39");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 39");

		null_state();
		#10;

		//Testing Truth Table line 40
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 40");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 40");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 40");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 40");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 40");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 40");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 40");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 40");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 40");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 40");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 40");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 40");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 40");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 40");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 40");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 40");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 40");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 40");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 40");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 40");

		null_state();
		#10;

		//Testing Truth Table line 41
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 41");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 41");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 41");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 41");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 41");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 41");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 41");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 41");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 41");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 41");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 41");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 41");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 41");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 41");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 41");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 41");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 41");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 41");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 41");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 41");

		null_state();
		#10;

		//Testing Truth Table line 42
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 42");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 42");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 42");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 42");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 42");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 42");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 42");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 42");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 42");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 42");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 42");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 42");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 42");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 42");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 42");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 42");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 42");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 42");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 42");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 42");

		null_state();
		#10;

		//Testing Truth Table line 43
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 43");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 43");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 43");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 43");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 43");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 43");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 43");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 43");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 43");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 43");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 43");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 43");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 43");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 43");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 43");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 43");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 43");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 43");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 43");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 43");

		null_state();
		#10;

		//Testing Truth Table line 44
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 44");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 44");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 44");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 44");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 44");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 44");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 44");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 44");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 44");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 44");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 44");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 44");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 44");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 44");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 44");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 44");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 44");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 44");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 44");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 44");

		null_state();
		#10;

		//Testing Truth Table line 45
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 45");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 45");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 45");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 45");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 45");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 45");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 45");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 45");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 45");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 45");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 45");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 45");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 45");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 45");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 45");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 45");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 45");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 45");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 45");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 45");

		null_state();
		#10;

		//Testing Truth Table line 46
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 46");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 46");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 46");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 46");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 46");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 46");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 46");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 46");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 46");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 46");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 46");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 46");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 46");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 46");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 46");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 46");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 46");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 46");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 46");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 46");

		null_state();
		#10;

		//Testing Truth Table line 47
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 47");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 47");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 47");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 47");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 47");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 47");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 47");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 47");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 47");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 47");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 47");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 47");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 47");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 47");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 47");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 47");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 47");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 47");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 47");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 47");

		null_state();
		#10;

		//Testing Truth Table line 48
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 48");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 48");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 48");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 48");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 48");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 48");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 48");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 48");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 48");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 48");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 48");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 48");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 48");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 48");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 48");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 48");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 48");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 48");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 48");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 48");

		null_state();
		#10;

		//Testing Truth Table line 49
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 49");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 49");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 49");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 49");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 49");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 49");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 49");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 49");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 49");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 49");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 49");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 49");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 49");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 49");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 49");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 49");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 49");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 49");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 49");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 49");

		null_state();
		#10;

		//Testing Truth Table line 50
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 50");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 50");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 50");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 50");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 50");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 50");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 50");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 50");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 50");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 50");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 50");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 50");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 50");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 50");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 50");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 50");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 50");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 50");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 50");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 50");

		null_state();
		#10;

		//Testing Truth Table line 51
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 51");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 51");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 51");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 51");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 51");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 51");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 51");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 51");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 51");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 51");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 51");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 51");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 51");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 51");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 51");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 51");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 51");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 51");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 51");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 51");

		null_state();
		#10;

		//Testing Truth Table line 52
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 52");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 52");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 52");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 52");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 52");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 52");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 52");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 52");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 52");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 52");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 52");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 52");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 52");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 52");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 52");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 52");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 52");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 52");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 52");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 52");

		null_state();
		#10;

		//Testing Truth Table line 53
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 53");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 53");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 53");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 53");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 53");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 53");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 53");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 53");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 53");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 53");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 53");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 53");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 53");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 53");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 53");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 53");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 53");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 53");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 53");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 53");

		null_state();
		#10;

		//Testing Truth Table line 54
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 54");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 54");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 54");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 54");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 54");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 54");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 54");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 54");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 54");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 54");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 54");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 54");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 54");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 54");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 54");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 54");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 54");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 54");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 54");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 54");

		null_state();
		#10;

		//Testing Truth Table line 55
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 55");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 55");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 55");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 55");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 55");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 55");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 55");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 55");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 55");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 55");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 55");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 55");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 55");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 55");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 55");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 55");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 55");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 55");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 55");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 55");

		null_state();
		#10;

		//Testing Truth Table line 56
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 56");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 56");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 56");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 56");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 56");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 56");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 56");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 56");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 56");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 56");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 56");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 56");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 56");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 56");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 56");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 56");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 56");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 56");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 56");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 56");

		null_state();
		#10;

		//Testing Truth Table line 57
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 57");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 57");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 57");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 57");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 57");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 57");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 57");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 57");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 57");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 57");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 57");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 57");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 57");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 57");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 57");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 57");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 57");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 57");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 57");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 57");

		null_state();
		#10;

		//Testing Truth Table line 58
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 58");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 58");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 58");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 58");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 58");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 58");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 58");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 58");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 58");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 58");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 58");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 58");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 58");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 58");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 58");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 58");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 58");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 58");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 58");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 58");

		null_state();
		#10;

		//Testing Truth Table line 59
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 59");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 59");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 59");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 59");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 59");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 59");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 59");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 59");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 59");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 59");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 59");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 59");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 59");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 59");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 59");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 59");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 59");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 59");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 59");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 59");

		null_state();
		#10;

		//Testing Truth Table line 60
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 60");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 60");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 60");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 60");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 60");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 60");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 60");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 60");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 60");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 60");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 60");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 60");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 60");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 60");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 60");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 60");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 60");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 60");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 60");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 60");

		null_state();
		#10;

		//Testing Truth Table line 61
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 61");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 61");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 61");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 61");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 61");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 61");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 61");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 61");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 61");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 61");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 61");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 61");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 61");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 61");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 61");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 61");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 61");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 61");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 61");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 61");

		null_state();
		#10;

		//Testing Truth Table line 62
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 62");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 62");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 62");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 62");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 62");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 62");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 62");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 62");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 62");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 62");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 62");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 62");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 62");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 62");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 62");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 62");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 62");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 62");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 62");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 62");

		null_state();
		#10;

		//Testing Truth Table line 63
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 63");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 63");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 63");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 63");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 63");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 63");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 63");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 63");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 63");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 63");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 63");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 63");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 63");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 63");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 63");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 63");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 63");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 63");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 63");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 63");

		null_state();
		#10;

		//Testing Truth Table line 64
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 64");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 64");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 64");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 64");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 64");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 64");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 64");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 64");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 64");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 64");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 64");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 64");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 64");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 64");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 64");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 64");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 64");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 64");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 64");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 64");

		null_state();
		#10;

		//Testing Truth Table line 65
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 65");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 65");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 65");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 65");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 65");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 65");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 65");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 65");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 65");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 65");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 65");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 65");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 65");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 65");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 65");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 65");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 65");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 65");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 65");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 65");

		null_state();
		#10;

		//Testing Truth Table line 66
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 66");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 66");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 66");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 66");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 66");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 66");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 66");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 66");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 66");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 66");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 66");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 66");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 66");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 66");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 66");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 66");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 66");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 66");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 66");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 66");

		null_state();
		#10;

		//Testing Truth Table line 67
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 67");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 67");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 67");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 67");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 67");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 67");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 67");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 67");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 67");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 67");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 67");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 67");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 67");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 67");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 67");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 67");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 67");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 67");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 67");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 67");

		null_state();
		#10;

		//Testing Truth Table line 68
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 68");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 68");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 68");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 68");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 68");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 68");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 68");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 68");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 68");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 68");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 68");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 68");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 68");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 68");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 68");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 68");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 68");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 68");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 68");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 68");

		null_state();
		#10;

		//Testing Truth Table line 69
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 69");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 69");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 69");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 69");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 69");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 69");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 69");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 69");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 69");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 69");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 69");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 69");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 69");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 69");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 69");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 69");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 69");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 69");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 69");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 69");

		null_state();
		#10;

		//Testing Truth Table line 70
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 70");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 70");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 70");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 70");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 70");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 70");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 70");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 70");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 70");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 70");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 70");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 70");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 70");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 70");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 70");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 70");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 70");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 70");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 70");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 70");

		null_state();
		#10;

		//Testing Truth Table line 71
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 71");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 71");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 71");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 71");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 71");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 71");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 71");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 71");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 71");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 71");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 71");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 71");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 71");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 71");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 71");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 71");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 71");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 71");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 71");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 71");

		null_state();
		#10;

		//Testing Truth Table line 72
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 72");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 72");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 72");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 72");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 72");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 72");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 72");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 72");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 72");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 72");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 72");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 72");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 72");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 72");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 72");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 72");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 72");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 72");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 72");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 72");

		null_state();
		#10;

		//Testing Truth Table line 73
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 73");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 73");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 73");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 73");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 73");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 73");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 73");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 73");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 73");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 73");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 73");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 73");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 73");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 73");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 73");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 73");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 73");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 73");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 73");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 73");

		null_state();
		#10;

		//Testing Truth Table line 74
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 74");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 74");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 74");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 74");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 74");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 74");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 74");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 74");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 74");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 74");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 74");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 74");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 74");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 74");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 74");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 74");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 74");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 74");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 74");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 74");

		null_state();
		#10;

		//Testing Truth Table line 75
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 75");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 75");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 75");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 75");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 75");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 75");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 75");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 75");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 75");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 75");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 75");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 75");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 75");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 75");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 75");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 75");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 75");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 75");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 75");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 75");

		null_state();
		#10;

		//Testing Truth Table line 76
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 76");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 76");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 76");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 76");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 76");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 76");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 76");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 76");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 76");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 76");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 76");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 76");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 76");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 76");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 76");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 76");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 76");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 76");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 76");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 76");

		null_state();
		#10;

		//Testing Truth Table line 77
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 77");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 77");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 77");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 77");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 77");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 77");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 77");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 77");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 77");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 77");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 77");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 77");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 77");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 77");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 77");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 77");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 77");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 77");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 77");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 77");

		null_state();
		#10;

		//Testing Truth Table line 78
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 78");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 78");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 78");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 78");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 78");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 78");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 78");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 78");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 78");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 78");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 78");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 78");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 78");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 78");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 78");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 78");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 78");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 78");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 78");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 78");

		null_state();
		#10;

		//Testing Truth Table line 79
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 79");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 79");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 79");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 79");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 79");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 79");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 79");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 79");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 79");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 79");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 79");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 79");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 79");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 79");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 79");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 79");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 79");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 79");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 79");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 79");

		null_state();
		#10;

		//Testing Truth Table line 80
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 80");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 80");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 80");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 80");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 80");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 80");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 80");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 80");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 80");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 80");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 80");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 80");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 80");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 80");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 80");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 80");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 80");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 80");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 80");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 80");

		null_state();
		#10;

		//Testing Truth Table line 81
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 81");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 81");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 81");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 81");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 81");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 81");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 81");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 81");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 81");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 81");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 81");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 81");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 81");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 81");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 81");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 81");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 81");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 81");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 81");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 81");

		null_state();
		#10;

		//Testing Truth Table line 82
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 82");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 82");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 82");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 82");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 82");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 82");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 82");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 82");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 82");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 82");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 82");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 82");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 82");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 82");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 82");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 82");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 82");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 82");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 82");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 82");

		null_state();
		#10;

		//Testing Truth Table line 83
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 83");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 83");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 83");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 83");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 83");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 83");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 83");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 83");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 83");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 83");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 83");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 83");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 83");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 83");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 83");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 83");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 83");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 83");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 83");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 83");

		null_state();
		#10;

		//Testing Truth Table line 84
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 84");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 84");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 84");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 84");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 84");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 84");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 84");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 84");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 84");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 84");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 84");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 84");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 84");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 84");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 84");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 84");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 84");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 84");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 84");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 84");

		null_state();
		#10;

		//Testing Truth Table line 85
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 85");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 85");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 85");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 85");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 85");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 85");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 85");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 85");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 85");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 85");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 85");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 85");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 85");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 85");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 85");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 85");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 85");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 85");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 85");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 85");

		null_state();
		#10;

		//Testing Truth Table line 86
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 86");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 86");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 86");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 86");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 86");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 86");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 86");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 86");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 86");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 86");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 86");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 86");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 86");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 86");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 86");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 86");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 86");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 86");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 86");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 86");

		null_state();
		#10;

		//Testing Truth Table line 87
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 87");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 87");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 87");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 87");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 87");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 87");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 87");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 87");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 87");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 87");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 87");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 87");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 87");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 87");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 87");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 87");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 87");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 87");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 87");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 87");

		null_state();
		#10;

		//Testing Truth Table line 88
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 88");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 88");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 88");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 88");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 88");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 88");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 88");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 88");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 88");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 88");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 88");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 88");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 88");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 88");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 88");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 88");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 88");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 88");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 88");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 88");

		null_state();
		#10;

		//Testing Truth Table line 89
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 89");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 89");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 89");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 89");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 89");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 89");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 89");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 89");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 89");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 89");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 89");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 89");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 89");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 89");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 89");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 89");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 89");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 89");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 89");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 89");

		null_state();
		#10;

		//Testing Truth Table line 90
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 90");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 90");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 90");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 90");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 90");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 90");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 90");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 90");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 90");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 90");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 90");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 90");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 90");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 90");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 90");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 90");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 90");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 90");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 90");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 90");

		null_state();
		#10;

		//Testing Truth Table line 91
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 91");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 91");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 91");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 91");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 91");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 91");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 91");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 91");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 91");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 91");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 91");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 91");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 91");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 91");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 91");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 91");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 91");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 91");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 91");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 91");

		null_state();
		#10;

		//Testing Truth Table line 92
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 92");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 92");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 92");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 92");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 92");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 92");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 92");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 92");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 92");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 92");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 92");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 92");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 92");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 92");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 92");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 92");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 92");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 92");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 92");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 92");

		null_state();
		#10;

		//Testing Truth Table line 93
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 93");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 93");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 93");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 93");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 93");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 93");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 93");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 93");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 93");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 93");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 93");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 93");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 93");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 93");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 93");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 93");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 93");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 93");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 93");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 93");

		null_state();
		#10;

		//Testing Truth Table line 94
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 94");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 94");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 94");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 94");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 94");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 94");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 94");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 94");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 94");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 94");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 94");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 94");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 94");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 94");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 94");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 94");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 94");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 94");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 94");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 94");

		null_state();
		#10;

		//Testing Truth Table line 95
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 95");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 95");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 95");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 95");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 95");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 95");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 95");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 95");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 95");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 95");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 95");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 95");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 95");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 95");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 95");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 95");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 95");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 95");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 95");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 95");

		null_state();
		#10;

		//Testing Truth Table line 96
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 96");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 96");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 96");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 96");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 96");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 96");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 96");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 96");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 96");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 96");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 96");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 96");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 96");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 96");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 96");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 96");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 96");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 96");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 96");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 96");

		null_state();
		#10;

		//Testing Truth Table line 97
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 97");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 97");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 97");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 97");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 97");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 97");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 97");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 97");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 97");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 97");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 97");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 97");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 97");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 97");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 97");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 97");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 97");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 97");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 97");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 97");

		null_state();
		#10;

		//Testing Truth Table line 98
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 98");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 98");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 98");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 98");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 98");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 98");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 98");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 98");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 98");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 98");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 98");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 98");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 98");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 98");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 98");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 98");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 98");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 98");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 98");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 98");

		null_state();
		#10;

		//Testing Truth Table line 99
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 99");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 99");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 99");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 99");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 99");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 99");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 99");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 99");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 99");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 99");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 99");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 99");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 99");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 99");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 99");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 99");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 99");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 99");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 99");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 99");

		null_state();
		#10;

		//Testing Truth Table line 100
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 100");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 100");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 100");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 100");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 100");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 100");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 100");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 100");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 100");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 100");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 100");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 100");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 100");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 100");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 100");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 100");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 100");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 100");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 100");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 100");

		null_state();
		#10;

		//Testing Truth Table line 101
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 101");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 101");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 101");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 101");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 101");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 101");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 101");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 101");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 101");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 101");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 101");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 101");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 101");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 101");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 101");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 101");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 101");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 101");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 101");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 101");

		null_state();
		#10;

		//Testing Truth Table line 102
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 102");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 102");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 102");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 102");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 102");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 102");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 102");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 102");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 102");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 102");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 102");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 102");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 102");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 102");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 102");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 102");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 102");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 102");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 102");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 102");

		null_state();
		#10;

		//Testing Truth Table line 103
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 103");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 103");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 103");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 103");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 103");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 103");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 103");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 103");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 103");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 103");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 103");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 103");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 103");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 103");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 103");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 103");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 103");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 103");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 103");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 103");

		null_state();
		#10;

		//Testing Truth Table line 104
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 104");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 104");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 104");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 104");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 104");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 104");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 104");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 104");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 104");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 104");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 104");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 104");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 104");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 104");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 104");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 104");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 104");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 104");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 104");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 104");

		null_state();
		#10;

		//Testing Truth Table line 105
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 105");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 105");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 105");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 105");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 105");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 105");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 105");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 105");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 105");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 105");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 105");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 105");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 105");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 105");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 105");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 105");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 105");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 105");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 105");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 105");

		null_state();
		#10;

		//Testing Truth Table line 106
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 106");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 106");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 106");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 106");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 106");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 106");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 106");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 106");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 106");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 106");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 106");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 106");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 106");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 106");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 106");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 106");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 106");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 106");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 106");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 106");

		null_state();
		#10;

		//Testing Truth Table line 107
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 107");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 107");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 107");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 107");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 107");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 107");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 107");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 107");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 107");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 107");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 107");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 107");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 107");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 107");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 107");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 107");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 107");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 107");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 107");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 107");

		null_state();
		#10;

		//Testing Truth Table line 108
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 108");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 108");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 108");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 108");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 108");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 108");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 108");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 108");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 108");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 108");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 108");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 108");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 108");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 108");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 108");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 108");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 108");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 108");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 108");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 108");

		null_state();
		#10;

		//Testing Truth Table line 109
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 109");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 109");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 109");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 109");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 109");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 109");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 109");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 109");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 109");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 109");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 109");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 109");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 109");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 109");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 109");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 109");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 109");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 109");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 109");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 109");

		null_state();
		#10;

		//Testing Truth Table line 110
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 110");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 110");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 110");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 110");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 110");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 110");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 110");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 110");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 110");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 110");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 110");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 110");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 110");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 110");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 110");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 110");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 110");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 110");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 110");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 110");

		null_state();
		#10;

		//Testing Truth Table line 111
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 111");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 111");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 111");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 111");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 111");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 111");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 111");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 111");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 111");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 111");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 111");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 111");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 111");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 111");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 111");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 111");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 111");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 111");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 111");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 111");

		null_state();
		#10;

		//Testing Truth Table line 112
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 112");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 112");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 112");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 112");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 112");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 112");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 112");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 112");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 112");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 112");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 112");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 112");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 112");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 112");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 112");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 112");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 112");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 112");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 112");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 112");

		null_state();
		#10;

		//Testing Truth Table line 113
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 113");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 113");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 113");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 113");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 113");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 113");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 113");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 113");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 113");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 113");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 113");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 113");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 113");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 113");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 113");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 113");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 113");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 113");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 113");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 113");

		null_state();
		#10;

		//Testing Truth Table line 114
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 114");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 114");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 114");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 114");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 114");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 114");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 114");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 114");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 114");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 114");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 114");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 114");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 114");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 114");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 114");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 114");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 114");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 114");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 114");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 114");

		null_state();
		#10;

		//Testing Truth Table line 115
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 115");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 115");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 115");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 115");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 115");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 115");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 115");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 115");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 115");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 115");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 115");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 115");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 115");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 115");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 115");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 115");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 115");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 115");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 115");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 115");

		null_state();
		#10;

		//Testing Truth Table line 116
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 116");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 116");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 116");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 116");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 116");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 116");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 116");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 116");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 116");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 116");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 116");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 116");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 116");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 116");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 116");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 116");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 116");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 116");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 116");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 116");

		null_state();
		#10;

		//Testing Truth Table line 117
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 117");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 117");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 117");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 117");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 117");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 117");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 117");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 117");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 117");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 117");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 117");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 117");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 117");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 117");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 117");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 117");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 117");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 117");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 117");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 117");

		null_state();
		#10;

		//Testing Truth Table line 118
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 118");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 118");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 118");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 118");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 118");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 118");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 118");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 118");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 118");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 118");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 118");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 118");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 118");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 118");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 118");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 118");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 118");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 118");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 118");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 118");

		null_state();
		#10;

		//Testing Truth Table line 119
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 119");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 119");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 119");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 119");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 119");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 119");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 119");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 119");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 119");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 119");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 119");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 119");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 119");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 119");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 119");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 119");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 119");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 119");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 119");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 119");

		null_state();
		#10;

		//Testing Truth Table line 120
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 120");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 120");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 120");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 120");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 120");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 120");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 120");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 120");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 120");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 120");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 120");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 120");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 120");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 120");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 120");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 120");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 120");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 120");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 120");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 120");

		null_state();
		#10;

		//Testing Truth Table line 121
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 121");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 121");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 121");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 121");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 121");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 121");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 121");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 121");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 121");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 121");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 121");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 121");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 121");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 121");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 121");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 121");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 121");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 121");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 121");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 121");

		null_state();
		#10;

		//Testing Truth Table line 122
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 122");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 122");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 122");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 122");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 122");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 122");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 122");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 122");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 122");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 122");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 122");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 122");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 122");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 122");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 122");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 122");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 122");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 122");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 122");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 122");

		null_state();
		#10;

		//Testing Truth Table line 123
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 123");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 123");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 123");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 123");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 123");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 123");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 123");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 123");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 123");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 123");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 123");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 123");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 123");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 123");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 123");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 123");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 123");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 123");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 123");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 123");

		null_state();
		#10;

		//Testing Truth Table line 124
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 124");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 124");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 124");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 124");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 124");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 124");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 124");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 124");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 124");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 124");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 124");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 124");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 124");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 124");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 124");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 124");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 124");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 124");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 124");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 124");

		null_state();
		#10;

		//Testing Truth Table line 125
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 125");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 125");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 125");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 125");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 125");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 125");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 125");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 125");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 125");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 125");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 125");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 125");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 125");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 125");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 125");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 125");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 125");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 125");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 125");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 125");

		null_state();
		#10;

		//Testing Truth Table line 126
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 126");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 126");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 126");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 126");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 126");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 126");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 126");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 126");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 126");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 126");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 126");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 126");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 126");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 126");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 126");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 126");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 126");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 126");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 126");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 126");

		null_state();
		#10;

		//Testing Truth Table line 127
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 127");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 127");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 127");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 127");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 127");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 127");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 127");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 127");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 127");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 127");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 127");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 127");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 127");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 127");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 127");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 127");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 127");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 127");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 127");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 127");

		null_state();
		#10;

		//Testing Truth Table line 128
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 128");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 128");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 128");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 128");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 128");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 128");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 128");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 128");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 128");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 128");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 128");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 128");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 128");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 128");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 128");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 128");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 128");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 128");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 128");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 128");

		null_state();
		#10;

		//Testing Truth Table line 129
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 129");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 129");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 129");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 129");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 129");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 129");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 129");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 129");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 129");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 129");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 129");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 129");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 129");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 129");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 129");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 129");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 129");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 129");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 129");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 129");

		null_state();
		#10;

		//Testing Truth Table line 130
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 130");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 130");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 130");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 130");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 130");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 130");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 130");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 130");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 130");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 130");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 130");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 130");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 130");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 130");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 130");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 130");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 130");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 130");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 130");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 130");

		null_state();
		#10;

		//Testing Truth Table line 131
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 131");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 131");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 131");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 131");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 131");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 131");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 131");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 131");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 131");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 131");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 131");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 131");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 131");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 131");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 131");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 131");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 131");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 131");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 131");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 131");

		null_state();
		#10;

		//Testing Truth Table line 132
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 132");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 132");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 132");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 132");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 132");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 132");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 132");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 132");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 132");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 132");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 132");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 132");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 132");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 132");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 132");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 132");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 132");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 132");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 132");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 132");

		null_state();
		#10;

		//Testing Truth Table line 133
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 133");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 133");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 133");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 133");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 133");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 133");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 133");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 133");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 133");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 133");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 133");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 133");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 133");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 133");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 133");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 133");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 133");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 133");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 133");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 133");

		null_state();
		#10;

		//Testing Truth Table line 134
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 134");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 134");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 134");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 134");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 134");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 134");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 134");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 134");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 134");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 134");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 134");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 134");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 134");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 134");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 134");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 134");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 134");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 134");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 134");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 134");

		null_state();
		#10;

		//Testing Truth Table line 135
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 135");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 135");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 135");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 135");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 135");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 135");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 135");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 135");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 135");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 135");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 135");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 135");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 135");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 135");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 135");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 135");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 135");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 135");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 135");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 135");

		null_state();
		#10;

		//Testing Truth Table line 136
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 136");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 136");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 136");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 136");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 136");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 136");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 136");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 136");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 136");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 136");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 136");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 136");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 136");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 136");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 136");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 136");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 136");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 136");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 136");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 136");

		null_state();
		#10;

		//Testing Truth Table line 137
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 137");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 137");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 137");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 137");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 137");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 137");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 137");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 137");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 137");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 137");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 137");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 137");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 137");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 137");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 137");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 137");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 137");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 137");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 137");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 137");

		null_state();
		#10;

		//Testing Truth Table line 138
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 138");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 138");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 138");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 138");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 138");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 138");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 138");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 138");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 138");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 138");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 138");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 138");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 138");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 138");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 138");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 138");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 138");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 138");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 138");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 138");

		null_state();
		#10;

		//Testing Truth Table line 139
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 139");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 139");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 139");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 139");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 139");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 139");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 139");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 139");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 139");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 139");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 139");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 139");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 139");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 139");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 139");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 139");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 139");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 139");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 139");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 139");

		null_state();
		#10;

		//Testing Truth Table line 140
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 140");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 140");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 140");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 140");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 140");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 140");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 140");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 140");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 140");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 140");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 140");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 140");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 140");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 140");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 140");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 140");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 140");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 140");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 140");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 140");

		null_state();
		#10;

		//Testing Truth Table line 141
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 141");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 141");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 141");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 141");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 141");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 141");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 141");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 141");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 141");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 141");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 141");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 141");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 141");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 141");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 141");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 141");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 141");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 141");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 141");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 141");

		null_state();
		#10;

		//Testing Truth Table line 142
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 142");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 142");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 142");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 142");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 142");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 142");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 142");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 142");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 142");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 142");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 142");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 142");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 142");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 142");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 142");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 142");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 142");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 142");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 142");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 142");

		null_state();
		#10;

		//Testing Truth Table line 143
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 143");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 143");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 143");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 143");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 143");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 143");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 143");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 143");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 143");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 143");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 143");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 143");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 143");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 143");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 143");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 143");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 143");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 143");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 143");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 143");

		null_state();
		#10;

		//Testing Truth Table line 144
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 144");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 144");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 144");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 144");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 144");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 144");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 144");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 144");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 144");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 144");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 144");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 144");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 144");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 144");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 144");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 144");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 144");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 144");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 144");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 144");

		null_state();
		#10;

		//Testing Truth Table line 145
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 145");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 145");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 145");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 145");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 145");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 145");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 145");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 145");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 145");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 145");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 145");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 145");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 145");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 145");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 145");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 145");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 145");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 145");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 145");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 145");

		null_state();
		#10;

		//Testing Truth Table line 146
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 146");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 146");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 146");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 146");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 146");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 146");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 146");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 146");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 146");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 146");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 146");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 146");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 146");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 146");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 146");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 146");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 146");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 146");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 146");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 146");

		null_state();
		#10;

		//Testing Truth Table line 147
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 147");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 147");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 147");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 147");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 147");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 147");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 147");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 147");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 147");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 147");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 147");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 147");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 147");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 147");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 147");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 147");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 147");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 147");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 147");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 147");

		null_state();
		#10;

		//Testing Truth Table line 148
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 148");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 148");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 148");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 148");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 148");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 148");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 148");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 148");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 148");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 148");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 148");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 148");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 148");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 148");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 148");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 148");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 148");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 148");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 148");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 148");

		null_state();
		#10;

		//Testing Truth Table line 149
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 149");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 149");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 149");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 149");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 149");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 149");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 149");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 149");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 149");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 149");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 149");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 149");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 149");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 149");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 149");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 149");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 149");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 149");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 149");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 149");

		null_state();
		#10;

		//Testing Truth Table line 150
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 150");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 150");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 150");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 150");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 150");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 150");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 150");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 150");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 150");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 150");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 150");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 150");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 150");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 150");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 150");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 150");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 150");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 150");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 150");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 150");

		null_state();
		#10;

		//Testing Truth Table line 151
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 151");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 151");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 151");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 151");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 151");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 151");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 151");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 151");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 151");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 151");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 151");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 151");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 151");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 151");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 151");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 151");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 151");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 151");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 151");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 151");

		null_state();
		#10;

		//Testing Truth Table line 152
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 152");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 152");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 152");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 152");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 152");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 152");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 152");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 152");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 152");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 152");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 152");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 152");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 152");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 152");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 152");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 152");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 152");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 152");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 152");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 152");

		null_state();
		#10;

		//Testing Truth Table line 153
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 153");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 153");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 153");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 153");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 153");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 153");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 153");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 153");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 153");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 153");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 153");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 153");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 153");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 153");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 153");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 153");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 153");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 153");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 153");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 153");

		null_state();
		#10;

		//Testing Truth Table line 154
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 154");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 154");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 154");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 154");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 154");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 154");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 154");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 154");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 154");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 154");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 154");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 154");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 154");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 154");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 154");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 154");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 154");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 154");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 154");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 154");

		null_state();
		#10;

		//Testing Truth Table line 155
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 155");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 155");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 155");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 155");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 155");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 155");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 155");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 155");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 155");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 155");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 155");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 155");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 155");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 155");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 155");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 155");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 155");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 155");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 155");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 155");

		null_state();
		#10;

		//Testing Truth Table line 156
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 156");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 156");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 156");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 156");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 156");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 156");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 156");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 156");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 156");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 156");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 156");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 156");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 156");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 156");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 156");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 156");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 156");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 156");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 156");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 156");

		null_state();
		#10;

		//Testing Truth Table line 157
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 157");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 157");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 157");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 157");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 157");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 157");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 157");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 157");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 157");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 157");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 157");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 157");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 157");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 157");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 157");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 157");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 157");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 157");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 157");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 157");

		null_state();
		#10;

		//Testing Truth Table line 158
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 158");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 158");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 158");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 158");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 158");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 158");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 158");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 158");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 158");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 158");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 158");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 158");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 158");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 158");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 158");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 158");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 158");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 158");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 158");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 158");

		null_state();
		#10;

		//Testing Truth Table line 159
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 159");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 159");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 159");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 159");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 159");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 159");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 159");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 159");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 159");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 159");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 159");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 159");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 159");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 159");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 159");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 159");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 159");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 159");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 159");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 159");

		null_state();
		#10;

		//Testing Truth Table line 160
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 160");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 160");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 160");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 160");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 160");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 160");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 160");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 160");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 160");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 160");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 160");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 160");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 160");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 160");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 160");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 160");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 160");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 160");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 160");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 160");

		null_state();
		#10;

		//Testing Truth Table line 161
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 161");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 161");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 161");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 161");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 161");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 161");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 161");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 161");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 161");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 161");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 161");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 161");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 161");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 161");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 161");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 161");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 161");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 161");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 161");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 161");

		null_state();
		#10;

		//Testing Truth Table line 162
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 162");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 162");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 162");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 162");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 162");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 162");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 162");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 162");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 162");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 162");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 162");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 162");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 162");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 162");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 162");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 162");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 162");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 162");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 162");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 162");

		null_state();
		#10;

		//Testing Truth Table line 163
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 163");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 163");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 163");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 163");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 163");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 163");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 163");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 163");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 163");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 163");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 163");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 163");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 163");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 163");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 163");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 163");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 163");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 163");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 163");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 163");

		null_state();
		#10;

		//Testing Truth Table line 164
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 164");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 164");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 164");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 164");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 164");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 164");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 164");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 164");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 164");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 164");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 164");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 164");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 164");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 164");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 164");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 164");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 164");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 164");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 164");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 164");

		null_state();
		#10;

		//Testing Truth Table line 165
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 165");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 165");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 165");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 165");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 165");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 165");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 165");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 165");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 165");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 165");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 165");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 165");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 165");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 165");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 165");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 165");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 165");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 165");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 165");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 165");

		null_state();
		#10;

		//Testing Truth Table line 166
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 166");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 166");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 166");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 166");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 166");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 166");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 166");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 166");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 166");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 166");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 166");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 166");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 166");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 166");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 166");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 166");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 166");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 166");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 166");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 166");

		null_state();
		#10;

		//Testing Truth Table line 167
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 167");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 167");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 167");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 167");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 167");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 167");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 167");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 167");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 167");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 167");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 167");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 167");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 167");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 167");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 167");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 167");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 167");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 167");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 167");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 167");

		null_state();
		#10;

		//Testing Truth Table line 168
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 168");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 168");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 168");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 168");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 168");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 168");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 168");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 168");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 168");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 168");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 168");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 168");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 168");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 168");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 168");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 168");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 168");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 168");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 168");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 168");

		null_state();
		#10;

		//Testing Truth Table line 169
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 169");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 169");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 169");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 169");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 169");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 169");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 169");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 169");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 169");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 169");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 169");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 169");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 169");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 169");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 169");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 169");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 169");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 169");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 169");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 169");

		null_state();
		#10;

		//Testing Truth Table line 170
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 170");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 170");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 170");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 170");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 170");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 170");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 170");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 170");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 170");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 170");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 170");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 170");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 170");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 170");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 170");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 170");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 170");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 170");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 170");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 170");

		null_state();
		#10;

		//Testing Truth Table line 171
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 171");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 171");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 171");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 171");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 171");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 171");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 171");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 171");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 171");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 171");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 171");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 171");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 171");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 171");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 171");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 171");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 171");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 171");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 171");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 171");

		null_state();
		#10;

		//Testing Truth Table line 172
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 172");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 172");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 172");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 172");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 172");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 172");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 172");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 172");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 172");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 172");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 172");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 172");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 172");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 172");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 172");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 172");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 172");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 172");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 172");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 172");

		null_state();
		#10;

		//Testing Truth Table line 173
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 173");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 173");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 173");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 173");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 173");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 173");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 173");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 173");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 173");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 173");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 173");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 173");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 173");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 173");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 173");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 173");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 173");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 173");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 173");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 173");

		null_state();
		#10;

		//Testing Truth Table line 174
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 174");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 174");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 174");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 174");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 174");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 174");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 174");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 174");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 174");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 174");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 174");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 174");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 174");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 174");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 174");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 174");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 174");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 174");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 174");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 174");

		null_state();
		#10;

		//Testing Truth Table line 175
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 175");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 175");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 175");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 175");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 175");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 175");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 175");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 175");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 175");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 175");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 175");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 175");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 175");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 175");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 175");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 175");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 175");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 175");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 175");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 175");

		null_state();
		#10;

		//Testing Truth Table line 176
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 176");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 176");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 176");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 176");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 176");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 176");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 176");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 176");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 176");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 176");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 176");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 176");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 176");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 176");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 176");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 176");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 176");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 176");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 176");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 176");

		null_state();
		#10;

		//Testing Truth Table line 177
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 177");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 177");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 177");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 177");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 177");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 177");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 177");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 177");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 177");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 177");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 177");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 177");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 177");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 177");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 177");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 177");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 177");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 177");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 177");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 177");

		null_state();
		#10;

		//Testing Truth Table line 178
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 178");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 178");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 178");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 178");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 178");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 178");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 178");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 178");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 178");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 178");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 178");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 178");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 178");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 178");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 178");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 178");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 178");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 178");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 178");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 178");

		null_state();
		#10;

		//Testing Truth Table line 179
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 179");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 179");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 179");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 179");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 179");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 179");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 179");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 179");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 179");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 179");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 179");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 179");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 179");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 179");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 179");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 179");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 179");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 179");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 179");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 179");

		null_state();
		#10;

		//Testing Truth Table line 180
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 180");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 180");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 180");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 180");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 180");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 180");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 180");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 180");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 180");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 180");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 180");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 180");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 180");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 180");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 180");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 180");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 180");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 180");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 180");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 180");

		null_state();
		#10;

		//Testing Truth Table line 181
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 181");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 181");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 181");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 181");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 181");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 181");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 181");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 181");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 181");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 181");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 181");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 181");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 181");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 181");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 181");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 181");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 181");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 181");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 181");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 181");

		null_state();
		#10;

		//Testing Truth Table line 182
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 182");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 182");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 182");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 182");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 182");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 182");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 182");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 182");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 182");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 182");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 182");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 182");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 182");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 182");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 182");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 182");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 182");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 182");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 182");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 182");

		null_state();
		#10;

		//Testing Truth Table line 183
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 183");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 183");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 183");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 183");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 183");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 183");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 183");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 183");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 183");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 183");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 183");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 183");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 183");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 183");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 183");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 183");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 183");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 183");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 183");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 183");

		null_state();
		#10;

		//Testing Truth Table line 184
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 184");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 184");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 184");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 184");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 184");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 184");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 184");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 184");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 184");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 184");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 184");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 184");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 184");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 184");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 184");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 184");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 184");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 184");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 184");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 184");

		null_state();
		#10;

		//Testing Truth Table line 185
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 185");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 185");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 185");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 185");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 185");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 185");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 185");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 185");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 185");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 185");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 185");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 185");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 185");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 185");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 185");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 185");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 185");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 185");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 185");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 185");

		null_state();
		#10;

		//Testing Truth Table line 186
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 186");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 186");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 186");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 186");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 186");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 186");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 186");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 186");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 186");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 186");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 186");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 186");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 186");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 186");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 186");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 186");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 186");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 186");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 186");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 186");

		null_state();
		#10;

		//Testing Truth Table line 187
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 187");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 187");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 187");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 187");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 187");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 187");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 187");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 187");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 187");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 187");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 187");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 187");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 187");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 187");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 187");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 187");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 187");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 187");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 187");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 187");

		null_state();
		#10;

		//Testing Truth Table line 188
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 188");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 188");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 188");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 188");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 188");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 188");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 188");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 188");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 188");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 188");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 188");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 188");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 188");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 188");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 188");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 188");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 188");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 188");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 188");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 188");

		null_state();
		#10;

		//Testing Truth Table line 189
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 189");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 189");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 189");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 189");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 189");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 189");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 189");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 189");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 189");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 189");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 189");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 189");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 189");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 189");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 189");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 189");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 189");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 189");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 189");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 189");

		null_state();
		#10;

		//Testing Truth Table line 190
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 190");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 190");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 190");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 190");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 190");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 190");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 190");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 190");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 190");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 190");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 190");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 190");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 190");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 190");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 190");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 190");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 190");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 190");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 190");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 190");

		null_state();
		#10;

		//Testing Truth Table line 191
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 191");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 191");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 191");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 191");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 191");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 191");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 191");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 191");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 191");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 191");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 191");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 191");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 191");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 191");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 191");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 191");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 191");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 191");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 191");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 191");

		null_state();
		#10;

		//Testing Truth Table line 192
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 192");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 192");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 192");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 192");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 192");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 192");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 192");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 192");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 192");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 192");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 192");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 192");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 192");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 192");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 192");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 192");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 192");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 192");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 192");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 192");

		null_state();
		#10;

		//Testing Truth Table line 193
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 193");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 193");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 193");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 193");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 193");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 193");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 193");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 193");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 193");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 193");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 193");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 193");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 193");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 193");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 193");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 193");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 193");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 193");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 193");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 193");

		null_state();
		#10;

		//Testing Truth Table line 194
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 194");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 194");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 194");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 194");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 194");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 194");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 194");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 194");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 194");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 194");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 194");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 194");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 194");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 194");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 194");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 194");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 194");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 194");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 194");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 194");

		null_state();
		#10;

		//Testing Truth Table line 195
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 195");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 195");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 195");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 195");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 195");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 195");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 195");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 195");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 195");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 195");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 195");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 195");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 195");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 195");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 195");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 195");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 195");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 195");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 195");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 195");

		null_state();
		#10;

		//Testing Truth Table line 196
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 196");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 196");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 196");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 196");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 196");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 196");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 196");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 196");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 196");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 196");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 196");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 196");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 196");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 196");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 196");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 196");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 196");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 196");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 196");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 196");

		null_state();
		#10;

		//Testing Truth Table line 197
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 197");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 197");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 197");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 197");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 197");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 197");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 197");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 197");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 197");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 197");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 197");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 197");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 197");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 197");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 197");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 197");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 197");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 197");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 197");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 197");

		null_state();
		#10;

		//Testing Truth Table line 198
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 198");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 198");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 198");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 198");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 198");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 198");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 198");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 198");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 198");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 198");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 198");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 198");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 198");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 198");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 198");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 198");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 198");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 198");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 198");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 198");

		null_state();
		#10;

		//Testing Truth Table line 199
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 199");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 199");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 199");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 199");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 199");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 199");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 199");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 199");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 199");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 199");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 199");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 199");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 199");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 199");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 199");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 199");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 199");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 199");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 199");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 199");

		null_state();
		#10;

		//Testing Truth Table line 200
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 200");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 200");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 200");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 200");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 200");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 200");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 200");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 200");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 200");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 200");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 200");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 200");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 200");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 200");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 200");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 200");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 200");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 200");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 200");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 200");

		null_state();
		#10;

		//Testing Truth Table line 201
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 201");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 201");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 201");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 201");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 201");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 201");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 201");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 201");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 201");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 201");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 201");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 201");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 201");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 201");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 201");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 201");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 201");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 201");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 201");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 201");

		null_state();
		#10;

		//Testing Truth Table line 202
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 202");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 202");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 202");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 202");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 202");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 202");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 202");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 202");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 202");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 202");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 202");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 202");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 202");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 202");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 202");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 202");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 202");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 202");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 202");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 202");

		null_state();
		#10;

		//Testing Truth Table line 203
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 203");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 203");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 203");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 203");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 203");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 203");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 203");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 203");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 203");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 203");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 203");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 203");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 203");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 203");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 203");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 203");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 203");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 203");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 203");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 203");

		null_state();
		#10;

		//Testing Truth Table line 204
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 204");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 204");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 204");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 204");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 204");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 204");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 204");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 204");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 204");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 204");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 204");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 204");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 204");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 204");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 204");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 204");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 204");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 204");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 204");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 204");

		null_state();
		#10;

		//Testing Truth Table line 205
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 205");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 205");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 205");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 205");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 205");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 205");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 205");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 205");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 205");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 205");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 205");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 205");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 205");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 205");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 205");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 205");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 205");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 205");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 205");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 205");

		null_state();
		#10;

		//Testing Truth Table line 206
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 206");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 206");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 206");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 206");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 206");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 206");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 206");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 206");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 206");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 206");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 206");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 206");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 206");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 206");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 206");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 206");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 206");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 206");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 206");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 206");

		null_state();
		#10;

		//Testing Truth Table line 207
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 207");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 207");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 207");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 207");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 207");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 207");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 207");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 207");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 207");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 207");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 207");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 207");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 207");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 207");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 207");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 207");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 207");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 207");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 207");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 207");

		null_state();
		#10;

		//Testing Truth Table line 208
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 208");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 208");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 208");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 208");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 208");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 208");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 208");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 208");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 208");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 208");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 208");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 208");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 208");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 208");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 208");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 208");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 208");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 208");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 208");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 208");

		null_state();
		#10;

		//Testing Truth Table line 209
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 209");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 209");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 209");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 209");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 209");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 209");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 209");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 209");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 209");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 209");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 209");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 209");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 209");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 209");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 209");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 209");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 209");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 209");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 209");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 209");

		null_state();
		#10;

		//Testing Truth Table line 210
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 210");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 210");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 210");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 210");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 210");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 210");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 210");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 210");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 210");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 210");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 210");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 210");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 210");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 210");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 210");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 210");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 210");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 210");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 210");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 210");

		null_state();
		#10;

		//Testing Truth Table line 211
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 211");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 211");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 211");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 211");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 211");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 211");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 211");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 211");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 211");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 211");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 211");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 211");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 211");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 211");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 211");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 211");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 211");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 211");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 211");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 211");

		null_state();
		#10;

		//Testing Truth Table line 212
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 212");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 212");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 212");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 212");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 212");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 212");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 212");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 212");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 212");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 212");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 212");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 212");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 212");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 212");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 212");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 212");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 212");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 212");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 212");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 212");

		null_state();
		#10;

		//Testing Truth Table line 213
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 213");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 213");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 213");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 213");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 213");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 213");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 213");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 213");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 213");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 213");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 213");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 213");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 213");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 213");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 213");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 213");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 213");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 213");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 213");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 213");

		null_state();
		#10;

		//Testing Truth Table line 214
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 214");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 214");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 214");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 214");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 214");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 214");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 214");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 214");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 214");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 214");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 214");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 214");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 214");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 214");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 214");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 214");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 214");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 214");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 214");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 214");

		null_state();
		#10;

		//Testing Truth Table line 215
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 215");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 215");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 215");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 215");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 215");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 215");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 215");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 215");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 215");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 215");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 215");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 215");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 215");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 215");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 215");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 215");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 215");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 215");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 215");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 215");

		null_state();
		#10;

		//Testing Truth Table line 216
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 216");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 216");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 216");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 216");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 216");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 216");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 216");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 216");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 216");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 216");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 216");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 216");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 216");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 216");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 216");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 216");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 216");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 216");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 216");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 216");

		null_state();
		#10;

		//Testing Truth Table line 217
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 217");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 217");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 217");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 217");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 217");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 217");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 217");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 217");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 217");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 217");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 217");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 217");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 217");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 217");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 217");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 217");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 217");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 217");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 217");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 217");

		null_state();
		#10;

		//Testing Truth Table line 218
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 218");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 218");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 218");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 218");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 218");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 218");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 218");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 218");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 218");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 218");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 218");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 218");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 218");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 218");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 218");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 218");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 218");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 218");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 218");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 218");

		null_state();
		#10;

		//Testing Truth Table line 219
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 219");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 219");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 219");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 219");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 219");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 219");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 219");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 219");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 219");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 219");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 219");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 219");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 219");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 219");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 219");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 219");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 219");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 219");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 219");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 219");

		null_state();
		#10;

		//Testing Truth Table line 220
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 220");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 220");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 220");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 220");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 220");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 220");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 220");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 220");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 220");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 220");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 220");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 220");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 220");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 220");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 220");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 220");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 220");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 220");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 220");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 220");

		null_state();
		#10;

		//Testing Truth Table line 221
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 221");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 221");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 221");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 221");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 221");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 221");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 221");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 221");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 221");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 221");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 221");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 221");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 221");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 221");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 221");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 221");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 221");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 221");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 221");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 221");

		null_state();
		#10;

		//Testing Truth Table line 222
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 222");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 222");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 222");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 222");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 222");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 222");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 222");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 222");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 222");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 222");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 222");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 222");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 222");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 222");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 222");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 222");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 222");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 222");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 222");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 222");

		null_state();
		#10;

		//Testing Truth Table line 223
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 223");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 223");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 223");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 223");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 223");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 223");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 223");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 223");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 223");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 223");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 223");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 223");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 223");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 223");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 223");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 223");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 223");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 223");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 223");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 223");

		null_state();
		#10;

		//Testing Truth Table line 224
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 224");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 224");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 224");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 224");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 224");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 224");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 224");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 224");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 224");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 224");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 224");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 224");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 224");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 224");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 224");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 224");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 224");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 224");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 224");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 224");

		null_state();
		#10;

		//Testing Truth Table line 225
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 225");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 225");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 225");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 225");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 225");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 225");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 225");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 225");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 225");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 225");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 225");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 225");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 225");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 225");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 225");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 225");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 225");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 225");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 225");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 225");

		null_state();
		#10;

		//Testing Truth Table line 226
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 226");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 226");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 226");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 226");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 226");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 226");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 226");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 226");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 226");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 226");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 226");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 226");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 226");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 226");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 226");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 226");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 226");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 226");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 226");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 226");

		null_state();
		#10;

		//Testing Truth Table line 227
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 227");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 227");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 227");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 227");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 227");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 227");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 227");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 227");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 227");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 227");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 227");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 227");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 227");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 227");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 227");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 227");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 227");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 227");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 227");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 227");

		null_state();
		#10;

		//Testing Truth Table line 228
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 228");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 228");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 228");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 228");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 228");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 228");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 228");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 228");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 228");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 228");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 228");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 228");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 228");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 228");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 228");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 228");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 228");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 228");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 228");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 228");

		null_state();
		#10;

		//Testing Truth Table line 229
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 229");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 229");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 229");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 229");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 229");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 229");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 229");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 229");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 229");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 229");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 229");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 229");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 229");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 229");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 229");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 229");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 229");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 229");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 229");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 229");

		null_state();
		#10;

		//Testing Truth Table line 230
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 230");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 230");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 230");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 230");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 230");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 230");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 230");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 230");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 230");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 230");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 230");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 230");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 230");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 230");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 230");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 230");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 230");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 230");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 230");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 230");

		null_state();
		#10;

		//Testing Truth Table line 231
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 231");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 231");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 231");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 231");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 231");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 231");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 231");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 231");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 231");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 231");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 231");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 231");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 231");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 231");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 231");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 231");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 231");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 231");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 231");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 231");

		null_state();
		#10;

		//Testing Truth Table line 232
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 232");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 232");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 232");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 232");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 232");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 232");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 232");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 232");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 232");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 232");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 232");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 232");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 232");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 232");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 232");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 232");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 232");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 232");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 232");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 232");

		null_state();
		#10;

		//Testing Truth Table line 233
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 233");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 233");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 233");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 233");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 233");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 233");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 233");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 233");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 233");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 233");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 233");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 233");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 233");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 233");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 233");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 233");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 233");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 233");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 233");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 233");

		null_state();
		#10;

		//Testing Truth Table line 234
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 234");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 234");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 234");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 234");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 234");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 234");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 234");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 234");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 234");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 234");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 234");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 234");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 234");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 234");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 234");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 234");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 234");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 234");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 234");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 234");

		null_state();
		#10;

		//Testing Truth Table line 235
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 235");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 235");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 235");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 235");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 235");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 235");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 235");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 235");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 235");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 235");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 235");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 235");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 235");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 235");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 235");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 235");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 235");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 235");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 235");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 235");

		null_state();
		#10;

		//Testing Truth Table line 236
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 236");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 236");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 236");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 236");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 236");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 236");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 236");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 236");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 236");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 236");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 236");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 236");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 236");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 236");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 236");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 236");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 236");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 236");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 236");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 236");

		null_state();
		#10;

		//Testing Truth Table line 237
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 237");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 237");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 237");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 237");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 237");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 237");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 237");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 237");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 237");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 237");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 237");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 237");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 237");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 237");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 237");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 237");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 237");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 237");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 237");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 237");

		null_state();
		#10;

		//Testing Truth Table line 238
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 238");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 238");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 238");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 238");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 238");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 238");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 238");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 238");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 238");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 238");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 238");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 238");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 238");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 238");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 238");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 238");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 238");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 238");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 238");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 238");

		null_state();
		#10;

		//Testing Truth Table line 239
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 239");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 239");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 239");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 239");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 239");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 239");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 239");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 239");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 239");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 239");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 239");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 239");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 239");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 239");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 239");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 239");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 239");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 239");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 239");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 239");

		null_state();
		#10;

		//Testing Truth Table line 240
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 240");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 240");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 240");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 240");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 240");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 240");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 240");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 240");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 240");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 240");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 240");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 240");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 240");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 240");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 240");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 240");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 240");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 240");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 240");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 240");

		null_state();
		#10;

		//Testing Truth Table line 241
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 241");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 241");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 241");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 241");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 241");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 241");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 241");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 241");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 241");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 241");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 241");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 241");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 241");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 241");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 241");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 241");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 241");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 241");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 241");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 241");

		null_state();
		#10;

		//Testing Truth Table line 242
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 242");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 242");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 242");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 242");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 242");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 242");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 242");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 242");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 242");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 242");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 242");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 242");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 242");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 242");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 242");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 242");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 242");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 242");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 242");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 242");

		null_state();
		#10;

		//Testing Truth Table line 243
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 243");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 243");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 243");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 243");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 243");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 243");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 243");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 243");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 243");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 243");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 243");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 243");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 243");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 243");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 243");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 243");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 243");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 243");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 243");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 243");

		null_state();
		#10;

		//Testing Truth Table line 244
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 244");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 244");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 244");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 244");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 244");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 244");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 244");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 244");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 244");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 244");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 244");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 244");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 244");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 244");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 244");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 244");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 244");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 244");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 244");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 244");

		null_state();
		#10;

		//Testing Truth Table line 245
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 245");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 245");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 245");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 245");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 245");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 245");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 245");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 245");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 245");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 245");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 245");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 245");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 245");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 245");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 245");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 245");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 245");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 245");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 245");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 245");

		null_state();
		#10;

		//Testing Truth Table line 246
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 246");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 246");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 246");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 246");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 246");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 246");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 246");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 246");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 246");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 246");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 246");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 246");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 246");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 246");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 246");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 246");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 246");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 246");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 246");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 246");

		null_state();
		#10;

		//Testing Truth Table line 247
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 247");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 247");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 247");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 247");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 247");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 247");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 247");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 247");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 247");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 247");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 247");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 247");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 247");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 247");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 247");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 247");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 247");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 247");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 247");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 247");

		null_state();
		#10;

		//Testing Truth Table line 248
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 248");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 248");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 248");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 248");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 248");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 248");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 248");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 248");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 248");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 248");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 248");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 248");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 248");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 248");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 248");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 248");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 248");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 248");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 248");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 248");

		null_state();
		#10;

		//Testing Truth Table line 249
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 249");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 249");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 249");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 249");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 249");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 249");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 249");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 249");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 249");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 249");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 249");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 249");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 249");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 249");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 249");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 249");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 249");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 249");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 249");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 249");

		null_state();
		#10;

		//Testing Truth Table line 250
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 250");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 250");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 250");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 250");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 250");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 250");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 250");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 250");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 250");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 250");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 250");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 250");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 250");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 250");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 250");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 250");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 250");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 250");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 250");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 250");

		null_state();
		#10;

		//Testing Truth Table line 251
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 251");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 251");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 251");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 251");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 251");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 251");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 251");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 251");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 251");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 251");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 251");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 251");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 251");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 251");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 251");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 251");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 251");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 251");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 251");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 251");

		null_state();
		#10;

		//Testing Truth Table line 252
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 252");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 252");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 252");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 252");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 252");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 252");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 252");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 252");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 252");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 252");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 252");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 252");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 252");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 252");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 252");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 252");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 252");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 252");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 252");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 252");

		null_state();
		#10;

		//Testing Truth Table line 253
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 253");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 253");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 253");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 253");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 253");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 253");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 253");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 253");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 253");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 253");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 253");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 253");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 253");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 253");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 253");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 253");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 253");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 253");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 253");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 253");

		null_state();
		#10;

		//Testing Truth Table line 254
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 254");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 254");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 254");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 254");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 254");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 254");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 254");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 254");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 254");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 254");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 254");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 254");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 254");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 254");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 254");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 254");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 254");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 254");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 254");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 254");

		null_state();
		#10;

		//Testing Truth Table line 255
		I7_t=0; I7_f=1;// I7==0
		I6_t=0; I6_f=1;// I6==0
		I5_t=0; I5_f=1;// I5==0
		I4_t=0; I4_f=1;// I4==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(C1i_t==- && C1i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C1i LINE 255");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C1i LINE 255");
		if(C11_t==- && C11_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C11 LINE 255");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C11 LINE 255");
		if(C10_t==- && C10_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C10 LINE 255");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C10 LINE 255");
		if(C2i_t==- && C2i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C2i LINE 255");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C2i LINE 255");
		if(C21_t==- && C21_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C21 LINE 255");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C21 LINE 255");
		if(C20_t==- && C20_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C20 LINE 255");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C20 LINE 255");
		if(C3i_t==- && C3i_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C3i LINE 255");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C3i LINE 255");
		if(C31_t==- && C31_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C31 LINE 255");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C31 LINE 255");
		if(C30_t==- && C30_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: C30 LINE 255");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: C30 LINE 255");
		if(Mr_t==- && Mr_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Mr LINE 255");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Mr LINE 255");
	end
endmodule 
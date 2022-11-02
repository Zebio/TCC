`timescale 1ns/1ps
module mem_addr_pc_tb();
	reg PH0_t, PH0_f, PC3_t, PC3_f, PC2_t, PC2_f, PC1_t, PC1_f, PC0_t, PC0_f, I3_t, I3_f, I2_t, I2_f, I1_t, I1_f, I0_t, I0_f;
	wire A3_t, A3_f, A2_t, A2_f, A1_t, A1_f, A0_t, A0_f;

	mem_addr_pc dut(
		PH0_t, PH0_f,
		PC3_t, PC3_f,
		PC2_t, PC2_f,
		PC1_t, PC1_f,
		PC0_t, PC0_f,
		I3_t, I3_f,
		I2_t, I2_f,
		I1_t, I1_f,
		I0_t, I0_f,
		A3_t, A3_f, 
		A2_t, A2_f, 
		A1_t, A1_f, 
		A0_t, A0_f
	);

	task null_state(); begin
		PH0_t=0; PH0_f=0; //PH0==NULL
		PC3_t=0; PC3_f=0; //PC3==NULL
		PC2_t=0; PC2_f=0; //PC2==NULL
		PC1_t=0; PC1_f=0; //PC1==NULL
		PC0_t=0; PC0_f=0; //PC0==NULL
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
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==0 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 0");
		if(A2_t==0 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 0");
		if(A1_t==0 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 0");
		if(A0_t==0 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 0");

		null_state();
		#10;

		//Testing Truth Table line 1
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==0 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 1");
		if(A2_t==0 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 1");
		if(A1_t==0 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 1");
		if(A0_t==1 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 1");

		null_state();
		#10;

		//Testing Truth Table line 2
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==0 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 2");
		if(A2_t==0 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 2");
		if(A1_t==1 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 2");
		if(A0_t==0 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 2");

		null_state();
		#10;

		//Testing Truth Table line 3
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==0 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 3");
		if(A2_t==0 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 3");
		if(A1_t==1 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 3");
		if(A0_t==1 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 3");

		null_state();
		#10;

		//Testing Truth Table line 4
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==0 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 4");
		if(A2_t==1 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 4");
		if(A1_t==0 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 4");
		if(A0_t==0 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 4");

		null_state();
		#10;

		//Testing Truth Table line 5
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==0 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 5");
		if(A2_t==1 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 5");
		if(A1_t==0 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 5");
		if(A0_t==1 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 5");

		null_state();
		#10;

		//Testing Truth Table line 6
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==0 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 6");
		if(A2_t==1 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 6");
		if(A1_t==1 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 6");
		if(A0_t==0 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 6");

		null_state();
		#10;

		//Testing Truth Table line 7
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==0 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 7");
		if(A2_t==1 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 7");
		if(A1_t==1 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 7");
		if(A0_t==1 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 7");

		null_state();
		#10;

		//Testing Truth Table line 8
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==1 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 8");
		if(A2_t==0 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 8");
		if(A1_t==0 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 8");
		if(A0_t==0 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 8");

		null_state();
		#10;

		//Testing Truth Table line 9
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==1 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 9");
		if(A2_t==0 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 9");
		if(A1_t==0 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 9");
		if(A0_t==1 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 9");

		null_state();
		#10;

		//Testing Truth Table line 10
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==1 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 10");
		if(A2_t==0 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 10");
		if(A1_t==1 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 10");
		if(A0_t==0 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 10");

		null_state();
		#10;

		//Testing Truth Table line 11
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==1 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 11");
		if(A2_t==0 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 11");
		if(A1_t==1 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 11");
		if(A0_t==1 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 11");

		null_state();
		#10;

		//Testing Truth Table line 12
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==1 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 12");
		if(A2_t==1 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 12");
		if(A1_t==0 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 12");
		if(A0_t==0 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 12");

		null_state();
		#10;

		//Testing Truth Table line 13
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==1 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 13");
		if(A2_t==1 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 13");
		if(A1_t==0 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 13");
		if(A0_t==1 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 13");

		null_state();
		#10;

		//Testing Truth Table line 14
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==1 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 14");
		if(A2_t==1 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 14");
		if(A1_t==1 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 14");
		if(A0_t==0 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 14");

		null_state();
		#10;

		//Testing Truth Table line 15
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==1 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 15");
		if(A2_t==1 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 15");
		if(A1_t==1 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 15");
		if(A0_t==1 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 15");

		null_state();
		#10;

		//Testing Truth Table line 16
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==0 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 16");
		if(A2_t==0 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 16");
		if(A1_t==0 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 16");
		if(A0_t==0 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 16");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 16");

		null_state();
		#10;

		//Testing Truth Table line 17
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==0 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 17");
		if(A2_t==0 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 17");
		if(A1_t==0 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 17");
		if(A0_t==1 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 17");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 17");

		null_state();
		#10;

		//Testing Truth Table line 18
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==0 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 18");
		if(A2_t==0 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 18");
		if(A1_t==1 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 18");
		if(A0_t==0 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 18");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 18");

		null_state();
		#10;

		//Testing Truth Table line 19
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==0 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 19");
		if(A2_t==0 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 19");
		if(A1_t==1 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 19");
		if(A0_t==1 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 19");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 19");

		null_state();
		#10;

		//Testing Truth Table line 20
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==0 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 20");
		if(A2_t==1 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 20");
		if(A1_t==0 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 20");
		if(A0_t==0 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 20");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 20");

		null_state();
		#10;

		//Testing Truth Table line 21
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==0 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 21");
		if(A2_t==1 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 21");
		if(A1_t==0 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 21");
		if(A0_t==1 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 21");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 21");

		null_state();
		#10;

		//Testing Truth Table line 22
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==0 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 22");
		if(A2_t==1 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 22");
		if(A1_t==1 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 22");
		if(A0_t==0 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 22");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 22");

		null_state();
		#10;

		//Testing Truth Table line 23
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==0 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 23");
		if(A2_t==1 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 23");
		if(A1_t==1 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 23");
		if(A0_t==1 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 23");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 23");

		null_state();
		#10;

		//Testing Truth Table line 24
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==1 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 24");
		if(A2_t==0 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 24");
		if(A1_t==0 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 24");
		if(A0_t==0 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 24");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 24");

		null_state();
		#10;

		//Testing Truth Table line 25
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==1 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 25");
		if(A2_t==0 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 25");
		if(A1_t==0 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 25");
		if(A0_t==1 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 25");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 25");

		null_state();
		#10;

		//Testing Truth Table line 26
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==1 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 26");
		if(A2_t==0 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 26");
		if(A1_t==1 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 26");
		if(A0_t==0 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 26");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 26");

		null_state();
		#10;

		//Testing Truth Table line 27
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==1 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 27");
		if(A2_t==0 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 27");
		if(A1_t==1 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 27");
		if(A0_t==1 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 27");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 27");

		null_state();
		#10;

		//Testing Truth Table line 28
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==1 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 28");
		if(A2_t==1 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 28");
		if(A1_t==0 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 28");
		if(A0_t==0 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 28");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 28");

		null_state();
		#10;

		//Testing Truth Table line 29
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==1 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 29");
		if(A2_t==1 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 29");
		if(A1_t==0 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 29");
		if(A0_t==1 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 29");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 29");

		null_state();
		#10;

		//Testing Truth Table line 30
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==1 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 30");
		if(A2_t==1 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 30");
		if(A1_t==1 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 30");
		if(A0_t==0 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 30");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 30");

		null_state();
		#10;

		//Testing Truth Table line 31
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==1 && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 31");
		if(A2_t==1 && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 31");
		if(A1_t==1 && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 31");
		if(A0_t==1 && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 31");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 31");

		null_state();
		#10;

		//Testing Truth Table line 32
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 32");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 32");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 32");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 32");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 32");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 32");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 32");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 32");

		null_state();
		#10;

		//Testing Truth Table line 33
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 33");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 33");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 33");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 33");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 33");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 33");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 33");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 33");

		null_state();
		#10;

		//Testing Truth Table line 34
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 34");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 34");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 34");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 34");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 34");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 34");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 34");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 34");

		null_state();
		#10;

		//Testing Truth Table line 35
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 35");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 35");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 35");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 35");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 35");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 35");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 35");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 35");

		null_state();
		#10;

		//Testing Truth Table line 36
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 36");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 36");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 36");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 36");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 36");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 36");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 36");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 36");

		null_state();
		#10;

		//Testing Truth Table line 37
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 37");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 37");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 37");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 37");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 37");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 37");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 37");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 37");

		null_state();
		#10;

		//Testing Truth Table line 38
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 38");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 38");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 38");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 38");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 38");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 38");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 38");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 38");

		null_state();
		#10;

		//Testing Truth Table line 39
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 39");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 39");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 39");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 39");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 39");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 39");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 39");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 39");

		null_state();
		#10;

		//Testing Truth Table line 40
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 40");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 40");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 40");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 40");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 40");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 40");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 40");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 40");

		null_state();
		#10;

		//Testing Truth Table line 41
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 41");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 41");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 41");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 41");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 41");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 41");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 41");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 41");

		null_state();
		#10;

		//Testing Truth Table line 42
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 42");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 42");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 42");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 42");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 42");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 42");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 42");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 42");

		null_state();
		#10;

		//Testing Truth Table line 43
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 43");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 43");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 43");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 43");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 43");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 43");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 43");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 43");

		null_state();
		#10;

		//Testing Truth Table line 44
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 44");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 44");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 44");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 44");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 44");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 44");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 44");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 44");

		null_state();
		#10;

		//Testing Truth Table line 45
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 45");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 45");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 45");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 45");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 45");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 45");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 45");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 45");

		null_state();
		#10;

		//Testing Truth Table line 46
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 46");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 46");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 46");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 46");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 46");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 46");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 46");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 46");

		null_state();
		#10;

		//Testing Truth Table line 47
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 47");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 47");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 47");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 47");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 47");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 47");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 47");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 47");

		null_state();
		#10;

		//Testing Truth Table line 48
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 48");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 48");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 48");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 48");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 48");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 48");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 48");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 48");

		null_state();
		#10;

		//Testing Truth Table line 49
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 49");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 49");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 49");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 49");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 49");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 49");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 49");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 49");

		null_state();
		#10;

		//Testing Truth Table line 50
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 50");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 50");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 50");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 50");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 50");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 50");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 50");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 50");

		null_state();
		#10;

		//Testing Truth Table line 51
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 51");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 51");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 51");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 51");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 51");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 51");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 51");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 51");

		null_state();
		#10;

		//Testing Truth Table line 52
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 52");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 52");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 52");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 52");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 52");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 52");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 52");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 52");

		null_state();
		#10;

		//Testing Truth Table line 53
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 53");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 53");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 53");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 53");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 53");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 53");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 53");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 53");

		null_state();
		#10;

		//Testing Truth Table line 54
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 54");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 54");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 54");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 54");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 54");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 54");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 54");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 54");

		null_state();
		#10;

		//Testing Truth Table line 55
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 55");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 55");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 55");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 55");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 55");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 55");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 55");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 55");

		null_state();
		#10;

		//Testing Truth Table line 56
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 56");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 56");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 56");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 56");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 56");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 56");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 56");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 56");

		null_state();
		#10;

		//Testing Truth Table line 57
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 57");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 57");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 57");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 57");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 57");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 57");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 57");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 57");

		null_state();
		#10;

		//Testing Truth Table line 58
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 58");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 58");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 58");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 58");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 58");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 58");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 58");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 58");

		null_state();
		#10;

		//Testing Truth Table line 59
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 59");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 59");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 59");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 59");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 59");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 59");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 59");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 59");

		null_state();
		#10;

		//Testing Truth Table line 60
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 60");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 60");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 60");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 60");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 60");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 60");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 60");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 60");

		null_state();
		#10;

		//Testing Truth Table line 61
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 61");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 61");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 61");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 61");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 61");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 61");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 61");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 61");

		null_state();
		#10;

		//Testing Truth Table line 62
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 62");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 62");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 62");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 62");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 62");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 62");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 62");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 62");

		null_state();
		#10;

		//Testing Truth Table line 63
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 63");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 63");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 63");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 63");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 63");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 63");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 63");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 63");

		null_state();
		#10;

		//Testing Truth Table line 64
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 64");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 64");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 64");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 64");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 64");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 64");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 64");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 64");

		null_state();
		#10;

		//Testing Truth Table line 65
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 65");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 65");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 65");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 65");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 65");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 65");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 65");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 65");

		null_state();
		#10;

		//Testing Truth Table line 66
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 66");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 66");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 66");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 66");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 66");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 66");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 66");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 66");

		null_state();
		#10;

		//Testing Truth Table line 67
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 67");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 67");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 67");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 67");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 67");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 67");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 67");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 67");

		null_state();
		#10;

		//Testing Truth Table line 68
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 68");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 68");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 68");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 68");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 68");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 68");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 68");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 68");

		null_state();
		#10;

		//Testing Truth Table line 69
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 69");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 69");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 69");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 69");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 69");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 69");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 69");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 69");

		null_state();
		#10;

		//Testing Truth Table line 70
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 70");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 70");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 70");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 70");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 70");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 70");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 70");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 70");

		null_state();
		#10;

		//Testing Truth Table line 71
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 71");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 71");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 71");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 71");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 71");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 71");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 71");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 71");

		null_state();
		#10;

		//Testing Truth Table line 72
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 72");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 72");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 72");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 72");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 72");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 72");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 72");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 72");

		null_state();
		#10;

		//Testing Truth Table line 73
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 73");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 73");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 73");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 73");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 73");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 73");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 73");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 73");

		null_state();
		#10;

		//Testing Truth Table line 74
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 74");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 74");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 74");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 74");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 74");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 74");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 74");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 74");

		null_state();
		#10;

		//Testing Truth Table line 75
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 75");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 75");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 75");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 75");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 75");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 75");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 75");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 75");

		null_state();
		#10;

		//Testing Truth Table line 76
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 76");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 76");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 76");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 76");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 76");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 76");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 76");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 76");

		null_state();
		#10;

		//Testing Truth Table line 77
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 77");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 77");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 77");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 77");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 77");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 77");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 77");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 77");

		null_state();
		#10;

		//Testing Truth Table line 78
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 78");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 78");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 78");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 78");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 78");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 78");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 78");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 78");

		null_state();
		#10;

		//Testing Truth Table line 79
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 79");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 79");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 79");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 79");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 79");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 79");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 79");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 79");

		null_state();
		#10;

		//Testing Truth Table line 80
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 80");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 80");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 80");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 80");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 80");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 80");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 80");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 80");

		null_state();
		#10;

		//Testing Truth Table line 81
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 81");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 81");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 81");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 81");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 81");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 81");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 81");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 81");

		null_state();
		#10;

		//Testing Truth Table line 82
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 82");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 82");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 82");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 82");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 82");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 82");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 82");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 82");

		null_state();
		#10;

		//Testing Truth Table line 83
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 83");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 83");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 83");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 83");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 83");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 83");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 83");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 83");

		null_state();
		#10;

		//Testing Truth Table line 84
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 84");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 84");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 84");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 84");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 84");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 84");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 84");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 84");

		null_state();
		#10;

		//Testing Truth Table line 85
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 85");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 85");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 85");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 85");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 85");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 85");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 85");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 85");

		null_state();
		#10;

		//Testing Truth Table line 86
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 86");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 86");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 86");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 86");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 86");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 86");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 86");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 86");

		null_state();
		#10;

		//Testing Truth Table line 87
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 87");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 87");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 87");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 87");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 87");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 87");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 87");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 87");

		null_state();
		#10;

		//Testing Truth Table line 88
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 88");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 88");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 88");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 88");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 88");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 88");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 88");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 88");

		null_state();
		#10;

		//Testing Truth Table line 89
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 89");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 89");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 89");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 89");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 89");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 89");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 89");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 89");

		null_state();
		#10;

		//Testing Truth Table line 90
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 90");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 90");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 90");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 90");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 90");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 90");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 90");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 90");

		null_state();
		#10;

		//Testing Truth Table line 91
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 91");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 91");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 91");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 91");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 91");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 91");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 91");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 91");

		null_state();
		#10;

		//Testing Truth Table line 92
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 92");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 92");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 92");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 92");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 92");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 92");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 92");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 92");

		null_state();
		#10;

		//Testing Truth Table line 93
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 93");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 93");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 93");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 93");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 93");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 93");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 93");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 93");

		null_state();
		#10;

		//Testing Truth Table line 94
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 94");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 94");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 94");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 94");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 94");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 94");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 94");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 94");

		null_state();
		#10;

		//Testing Truth Table line 95
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 95");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 95");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 95");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 95");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 95");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 95");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 95");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 95");

		null_state();
		#10;

		//Testing Truth Table line 96
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 96");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 96");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 96");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 96");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 96");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 96");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 96");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 96");

		null_state();
		#10;

		//Testing Truth Table line 97
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 97");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 97");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 97");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 97");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 97");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 97");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 97");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 97");

		null_state();
		#10;

		//Testing Truth Table line 98
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 98");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 98");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 98");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 98");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 98");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 98");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 98");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 98");

		null_state();
		#10;

		//Testing Truth Table line 99
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 99");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 99");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 99");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 99");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 99");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 99");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 99");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 99");

		null_state();
		#10;

		//Testing Truth Table line 100
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 100");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 100");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 100");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 100");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 100");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 100");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 100");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 100");

		null_state();
		#10;

		//Testing Truth Table line 101
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 101");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 101");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 101");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 101");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 101");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 101");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 101");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 101");

		null_state();
		#10;

		//Testing Truth Table line 102
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 102");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 102");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 102");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 102");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 102");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 102");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 102");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 102");

		null_state();
		#10;

		//Testing Truth Table line 103
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 103");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 103");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 103");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 103");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 103");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 103");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 103");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 103");

		null_state();
		#10;

		//Testing Truth Table line 104
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 104");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 104");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 104");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 104");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 104");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 104");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 104");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 104");

		null_state();
		#10;

		//Testing Truth Table line 105
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 105");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 105");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 105");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 105");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 105");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 105");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 105");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 105");

		null_state();
		#10;

		//Testing Truth Table line 106
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 106");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 106");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 106");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 106");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 106");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 106");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 106");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 106");

		null_state();
		#10;

		//Testing Truth Table line 107
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 107");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 107");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 107");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 107");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 107");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 107");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 107");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 107");

		null_state();
		#10;

		//Testing Truth Table line 108
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 108");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 108");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 108");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 108");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 108");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 108");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 108");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 108");

		null_state();
		#10;

		//Testing Truth Table line 109
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 109");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 109");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 109");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 109");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 109");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 109");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 109");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 109");

		null_state();
		#10;

		//Testing Truth Table line 110
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 110");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 110");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 110");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 110");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 110");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 110");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 110");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 110");

		null_state();
		#10;

		//Testing Truth Table line 111
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 111");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 111");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 111");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 111");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 111");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 111");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 111");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 111");

		null_state();
		#10;

		//Testing Truth Table line 112
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 112");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 112");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 112");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 112");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 112");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 112");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 112");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 112");

		null_state();
		#10;

		//Testing Truth Table line 113
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 113");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 113");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 113");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 113");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 113");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 113");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 113");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 113");

		null_state();
		#10;

		//Testing Truth Table line 114
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 114");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 114");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 114");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 114");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 114");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 114");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 114");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 114");

		null_state();
		#10;

		//Testing Truth Table line 115
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 115");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 115");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 115");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 115");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 115");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 115");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 115");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 115");

		null_state();
		#10;

		//Testing Truth Table line 116
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 116");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 116");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 116");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 116");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 116");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 116");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 116");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 116");

		null_state();
		#10;

		//Testing Truth Table line 117
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 117");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 117");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 117");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 117");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 117");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 117");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 117");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 117");

		null_state();
		#10;

		//Testing Truth Table line 118
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 118");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 118");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 118");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 118");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 118");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 118");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 118");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 118");

		null_state();
		#10;

		//Testing Truth Table line 119
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 119");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 119");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 119");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 119");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 119");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 119");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 119");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 119");

		null_state();
		#10;

		//Testing Truth Table line 120
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 120");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 120");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 120");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 120");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 120");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 120");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 120");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 120");

		null_state();
		#10;

		//Testing Truth Table line 121
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 121");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 121");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 121");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 121");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 121");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 121");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 121");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 121");

		null_state();
		#10;

		//Testing Truth Table line 122
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 122");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 122");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 122");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 122");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 122");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 122");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 122");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 122");

		null_state();
		#10;

		//Testing Truth Table line 123
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 123");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 123");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 123");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 123");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 123");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 123");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 123");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 123");

		null_state();
		#10;

		//Testing Truth Table line 124
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 124");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 124");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 124");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 124");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 124");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 124");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 124");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 124");

		null_state();
		#10;

		//Testing Truth Table line 125
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 125");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 125");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 125");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 125");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 125");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 125");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 125");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 125");

		null_state();
		#10;

		//Testing Truth Table line 126
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 126");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 126");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 126");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 126");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 126");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 126");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 126");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 126");

		null_state();
		#10;

		//Testing Truth Table line 127
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 127");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 127");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 127");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 127");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 127");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 127");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 127");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 127");

		null_state();
		#10;

		//Testing Truth Table line 128
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 128");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 128");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 128");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 128");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 128");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 128");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 128");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 128");

		null_state();
		#10;

		//Testing Truth Table line 129
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 129");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 129");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 129");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 129");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 129");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 129");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 129");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 129");

		null_state();
		#10;

		//Testing Truth Table line 130
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 130");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 130");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 130");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 130");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 130");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 130");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 130");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 130");

		null_state();
		#10;

		//Testing Truth Table line 131
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 131");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 131");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 131");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 131");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 131");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 131");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 131");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 131");

		null_state();
		#10;

		//Testing Truth Table line 132
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 132");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 132");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 132");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 132");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 132");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 132");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 132");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 132");

		null_state();
		#10;

		//Testing Truth Table line 133
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 133");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 133");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 133");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 133");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 133");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 133");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 133");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 133");

		null_state();
		#10;

		//Testing Truth Table line 134
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 134");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 134");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 134");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 134");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 134");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 134");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 134");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 134");

		null_state();
		#10;

		//Testing Truth Table line 135
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 135");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 135");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 135");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 135");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 135");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 135");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 135");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 135");

		null_state();
		#10;

		//Testing Truth Table line 136
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 136");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 136");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 136");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 136");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 136");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 136");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 136");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 136");

		null_state();
		#10;

		//Testing Truth Table line 137
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 137");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 137");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 137");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 137");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 137");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 137");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 137");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 137");

		null_state();
		#10;

		//Testing Truth Table line 138
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 138");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 138");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 138");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 138");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 138");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 138");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 138");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 138");

		null_state();
		#10;

		//Testing Truth Table line 139
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 139");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 139");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 139");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 139");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 139");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 139");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 139");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 139");

		null_state();
		#10;

		//Testing Truth Table line 140
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 140");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 140");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 140");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 140");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 140");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 140");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 140");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 140");

		null_state();
		#10;

		//Testing Truth Table line 141
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 141");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 141");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 141");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 141");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 141");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 141");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 141");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 141");

		null_state();
		#10;

		//Testing Truth Table line 142
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 142");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 142");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 142");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 142");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 142");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 142");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 142");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 142");

		null_state();
		#10;

		//Testing Truth Table line 143
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 143");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 143");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 143");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 143");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 143");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 143");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 143");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 143");

		null_state();
		#10;

		//Testing Truth Table line 144
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 144");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 144");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 144");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 144");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 144");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 144");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 144");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 144");

		null_state();
		#10;

		//Testing Truth Table line 145
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 145");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 145");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 145");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 145");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 145");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 145");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 145");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 145");

		null_state();
		#10;

		//Testing Truth Table line 146
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 146");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 146");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 146");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 146");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 146");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 146");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 146");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 146");

		null_state();
		#10;

		//Testing Truth Table line 147
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 147");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 147");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 147");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 147");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 147");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 147");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 147");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 147");

		null_state();
		#10;

		//Testing Truth Table line 148
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 148");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 148");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 148");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 148");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 148");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 148");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 148");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 148");

		null_state();
		#10;

		//Testing Truth Table line 149
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 149");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 149");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 149");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 149");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 149");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 149");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 149");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 149");

		null_state();
		#10;

		//Testing Truth Table line 150
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 150");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 150");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 150");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 150");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 150");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 150");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 150");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 150");

		null_state();
		#10;

		//Testing Truth Table line 151
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 151");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 151");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 151");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 151");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 151");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 151");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 151");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 151");

		null_state();
		#10;

		//Testing Truth Table line 152
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 152");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 152");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 152");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 152");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 152");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 152");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 152");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 152");

		null_state();
		#10;

		//Testing Truth Table line 153
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 153");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 153");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 153");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 153");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 153");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 153");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 153");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 153");

		null_state();
		#10;

		//Testing Truth Table line 154
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 154");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 154");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 154");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 154");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 154");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 154");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 154");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 154");

		null_state();
		#10;

		//Testing Truth Table line 155
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 155");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 155");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 155");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 155");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 155");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 155");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 155");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 155");

		null_state();
		#10;

		//Testing Truth Table line 156
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 156");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 156");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 156");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 156");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 156");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 156");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 156");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 156");

		null_state();
		#10;

		//Testing Truth Table line 157
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 157");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 157");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 157");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 157");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 157");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 157");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 157");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 157");

		null_state();
		#10;

		//Testing Truth Table line 158
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 158");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 158");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 158");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 158");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 158");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 158");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 158");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 158");

		null_state();
		#10;

		//Testing Truth Table line 159
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 159");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 159");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 159");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 159");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 159");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 159");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 159");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 159");

		null_state();
		#10;

		//Testing Truth Table line 160
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 160");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 160");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 160");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 160");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 160");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 160");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 160");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 160");

		null_state();
		#10;

		//Testing Truth Table line 161
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 161");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 161");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 161");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 161");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 161");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 161");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 161");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 161");

		null_state();
		#10;

		//Testing Truth Table line 162
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 162");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 162");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 162");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 162");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 162");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 162");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 162");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 162");

		null_state();
		#10;

		//Testing Truth Table line 163
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 163");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 163");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 163");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 163");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 163");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 163");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 163");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 163");

		null_state();
		#10;

		//Testing Truth Table line 164
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 164");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 164");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 164");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 164");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 164");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 164");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 164");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 164");

		null_state();
		#10;

		//Testing Truth Table line 165
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 165");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 165");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 165");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 165");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 165");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 165");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 165");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 165");

		null_state();
		#10;

		//Testing Truth Table line 166
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 166");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 166");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 166");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 166");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 166");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 166");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 166");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 166");

		null_state();
		#10;

		//Testing Truth Table line 167
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 167");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 167");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 167");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 167");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 167");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 167");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 167");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 167");

		null_state();
		#10;

		//Testing Truth Table line 168
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 168");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 168");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 168");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 168");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 168");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 168");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 168");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 168");

		null_state();
		#10;

		//Testing Truth Table line 169
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 169");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 169");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 169");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 169");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 169");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 169");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 169");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 169");

		null_state();
		#10;

		//Testing Truth Table line 170
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 170");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 170");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 170");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 170");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 170");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 170");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 170");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 170");

		null_state();
		#10;

		//Testing Truth Table line 171
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 171");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 171");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 171");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 171");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 171");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 171");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 171");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 171");

		null_state();
		#10;

		//Testing Truth Table line 172
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 172");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 172");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 172");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 172");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 172");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 172");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 172");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 172");

		null_state();
		#10;

		//Testing Truth Table line 173
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 173");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 173");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 173");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 173");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 173");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 173");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 173");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 173");

		null_state();
		#10;

		//Testing Truth Table line 174
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 174");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 174");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 174");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 174");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 174");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 174");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 174");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 174");

		null_state();
		#10;

		//Testing Truth Table line 175
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 175");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 175");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 175");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 175");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 175");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 175");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 175");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 175");

		null_state();
		#10;

		//Testing Truth Table line 176
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 176");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 176");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 176");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 176");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 176");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 176");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 176");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 176");

		null_state();
		#10;

		//Testing Truth Table line 177
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 177");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 177");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 177");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 177");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 177");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 177");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 177");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 177");

		null_state();
		#10;

		//Testing Truth Table line 178
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 178");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 178");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 178");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 178");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 178");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 178");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 178");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 178");

		null_state();
		#10;

		//Testing Truth Table line 179
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 179");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 179");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 179");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 179");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 179");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 179");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 179");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 179");

		null_state();
		#10;

		//Testing Truth Table line 180
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 180");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 180");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 180");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 180");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 180");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 180");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 180");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 180");

		null_state();
		#10;

		//Testing Truth Table line 181
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 181");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 181");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 181");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 181");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 181");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 181");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 181");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 181");

		null_state();
		#10;

		//Testing Truth Table line 182
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 182");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 182");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 182");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 182");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 182");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 182");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 182");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 182");

		null_state();
		#10;

		//Testing Truth Table line 183
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 183");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 183");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 183");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 183");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 183");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 183");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 183");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 183");

		null_state();
		#10;

		//Testing Truth Table line 184
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 184");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 184");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 184");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 184");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 184");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 184");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 184");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 184");

		null_state();
		#10;

		//Testing Truth Table line 185
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 185");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 185");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 185");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 185");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 185");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 185");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 185");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 185");

		null_state();
		#10;

		//Testing Truth Table line 186
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 186");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 186");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 186");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 186");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 186");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 186");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 186");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 186");

		null_state();
		#10;

		//Testing Truth Table line 187
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 187");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 187");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 187");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 187");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 187");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 187");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 187");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 187");

		null_state();
		#10;

		//Testing Truth Table line 188
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 188");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 188");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 188");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 188");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 188");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 188");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 188");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 188");

		null_state();
		#10;

		//Testing Truth Table line 189
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 189");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 189");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 189");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 189");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 189");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 189");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 189");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 189");

		null_state();
		#10;

		//Testing Truth Table line 190
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 190");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 190");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 190");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 190");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 190");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 190");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 190");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 190");

		null_state();
		#10;

		//Testing Truth Table line 191
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 191");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 191");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 191");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 191");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 191");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 191");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 191");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 191");

		null_state();
		#10;

		//Testing Truth Table line 192
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 192");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 192");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 192");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 192");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 192");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 192");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 192");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 192");

		null_state();
		#10;

		//Testing Truth Table line 193
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 193");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 193");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 193");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 193");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 193");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 193");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 193");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 193");

		null_state();
		#10;

		//Testing Truth Table line 194
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 194");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 194");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 194");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 194");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 194");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 194");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 194");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 194");

		null_state();
		#10;

		//Testing Truth Table line 195
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 195");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 195");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 195");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 195");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 195");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 195");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 195");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 195");

		null_state();
		#10;

		//Testing Truth Table line 196
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 196");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 196");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 196");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 196");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 196");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 196");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 196");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 196");

		null_state();
		#10;

		//Testing Truth Table line 197
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 197");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 197");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 197");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 197");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 197");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 197");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 197");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 197");

		null_state();
		#10;

		//Testing Truth Table line 198
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 198");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 198");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 198");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 198");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 198");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 198");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 198");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 198");

		null_state();
		#10;

		//Testing Truth Table line 199
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 199");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 199");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 199");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 199");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 199");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 199");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 199");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 199");

		null_state();
		#10;

		//Testing Truth Table line 200
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 200");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 200");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 200");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 200");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 200");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 200");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 200");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 200");

		null_state();
		#10;

		//Testing Truth Table line 201
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 201");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 201");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 201");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 201");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 201");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 201");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 201");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 201");

		null_state();
		#10;

		//Testing Truth Table line 202
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 202");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 202");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 202");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 202");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 202");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 202");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 202");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 202");

		null_state();
		#10;

		//Testing Truth Table line 203
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 203");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 203");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 203");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 203");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 203");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 203");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 203");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 203");

		null_state();
		#10;

		//Testing Truth Table line 204
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 204");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 204");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 204");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 204");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 204");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 204");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 204");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 204");

		null_state();
		#10;

		//Testing Truth Table line 205
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 205");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 205");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 205");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 205");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 205");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 205");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 205");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 205");

		null_state();
		#10;

		//Testing Truth Table line 206
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 206");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 206");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 206");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 206");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 206");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 206");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 206");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 206");

		null_state();
		#10;

		//Testing Truth Table line 207
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 207");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 207");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 207");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 207");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 207");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 207");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 207");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 207");

		null_state();
		#10;

		//Testing Truth Table line 208
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 208");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 208");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 208");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 208");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 208");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 208");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 208");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 208");

		null_state();
		#10;

		//Testing Truth Table line 209
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 209");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 209");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 209");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 209");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 209");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 209");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 209");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 209");

		null_state();
		#10;

		//Testing Truth Table line 210
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 210");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 210");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 210");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 210");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 210");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 210");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 210");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 210");

		null_state();
		#10;

		//Testing Truth Table line 211
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 211");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 211");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 211");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 211");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 211");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 211");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 211");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 211");

		null_state();
		#10;

		//Testing Truth Table line 212
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 212");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 212");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 212");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 212");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 212");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 212");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 212");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 212");

		null_state();
		#10;

		//Testing Truth Table line 213
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 213");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 213");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 213");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 213");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 213");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 213");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 213");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 213");

		null_state();
		#10;

		//Testing Truth Table line 214
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 214");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 214");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 214");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 214");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 214");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 214");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 214");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 214");

		null_state();
		#10;

		//Testing Truth Table line 215
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 215");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 215");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 215");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 215");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 215");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 215");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 215");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 215");

		null_state();
		#10;

		//Testing Truth Table line 216
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 216");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 216");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 216");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 216");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 216");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 216");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 216");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 216");

		null_state();
		#10;

		//Testing Truth Table line 217
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 217");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 217");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 217");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 217");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 217");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 217");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 217");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 217");

		null_state();
		#10;

		//Testing Truth Table line 218
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 218");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 218");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 218");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 218");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 218");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 218");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 218");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 218");

		null_state();
		#10;

		//Testing Truth Table line 219
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 219");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 219");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 219");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 219");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 219");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 219");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 219");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 219");

		null_state();
		#10;

		//Testing Truth Table line 220
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 220");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 220");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 220");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 220");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 220");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 220");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 220");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 220");

		null_state();
		#10;

		//Testing Truth Table line 221
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 221");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 221");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 221");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 221");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 221");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 221");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 221");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 221");

		null_state();
		#10;

		//Testing Truth Table line 222
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 222");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 222");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 222");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 222");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 222");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 222");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 222");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 222");

		null_state();
		#10;

		//Testing Truth Table line 223
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 223");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 223");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 223");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 223");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 223");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 223");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 223");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 223");

		null_state();
		#10;

		//Testing Truth Table line 224
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 224");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 224");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 224");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 224");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 224");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 224");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 224");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 224");

		null_state();
		#10;

		//Testing Truth Table line 225
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 225");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 225");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 225");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 225");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 225");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 225");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 225");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 225");

		null_state();
		#10;

		//Testing Truth Table line 226
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 226");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 226");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 226");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 226");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 226");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 226");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 226");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 226");

		null_state();
		#10;

		//Testing Truth Table line 227
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 227");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 227");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 227");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 227");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 227");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 227");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 227");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 227");

		null_state();
		#10;

		//Testing Truth Table line 228
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 228");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 228");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 228");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 228");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 228");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 228");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 228");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 228");

		null_state();
		#10;

		//Testing Truth Table line 229
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 229");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 229");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 229");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 229");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 229");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 229");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 229");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 229");

		null_state();
		#10;

		//Testing Truth Table line 230
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 230");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 230");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 230");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 230");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 230");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 230");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 230");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 230");

		null_state();
		#10;

		//Testing Truth Table line 231
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 231");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 231");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 231");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 231");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 231");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 231");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 231");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 231");

		null_state();
		#10;

		//Testing Truth Table line 232
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 232");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 232");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 232");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 232");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 232");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 232");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 232");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 232");

		null_state();
		#10;

		//Testing Truth Table line 233
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 233");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 233");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 233");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 233");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 233");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 233");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 233");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 233");

		null_state();
		#10;

		//Testing Truth Table line 234
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 234");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 234");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 234");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 234");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 234");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 234");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 234");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 234");

		null_state();
		#10;

		//Testing Truth Table line 235
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 235");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 235");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 235");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 235");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 235");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 235");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 235");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 235");

		null_state();
		#10;

		//Testing Truth Table line 236
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 236");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 236");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 236");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 236");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 236");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 236");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 236");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 236");

		null_state();
		#10;

		//Testing Truth Table line 237
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 237");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 237");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 237");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 237");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 237");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 237");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 237");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 237");

		null_state();
		#10;

		//Testing Truth Table line 238
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 238");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 238");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 238");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 238");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 238");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 238");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 238");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 238");

		null_state();
		#10;

		//Testing Truth Table line 239
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 239");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 239");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 239");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 239");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 239");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 239");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 239");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 239");

		null_state();
		#10;

		//Testing Truth Table line 240
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 240");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 240");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 240");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 240");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 240");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 240");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 240");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 240");

		null_state();
		#10;

		//Testing Truth Table line 241
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 241");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 241");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 241");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 241");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 241");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 241");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 241");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 241");

		null_state();
		#10;

		//Testing Truth Table line 242
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 242");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 242");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 242");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 242");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 242");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 242");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 242");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 242");

		null_state();
		#10;

		//Testing Truth Table line 243
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 243");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 243");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 243");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 243");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 243");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 243");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 243");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 243");

		null_state();
		#10;

		//Testing Truth Table line 244
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 244");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 244");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 244");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 244");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 244");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 244");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 244");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 244");

		null_state();
		#10;

		//Testing Truth Table line 245
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 245");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 245");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 245");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 245");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 245");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 245");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 245");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 245");

		null_state();
		#10;

		//Testing Truth Table line 246
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 246");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 246");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 246");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 246");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 246");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 246");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 246");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 246");

		null_state();
		#10;

		//Testing Truth Table line 247
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 247");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 247");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 247");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 247");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 247");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 247");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 247");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 247");

		null_state();
		#10;

		//Testing Truth Table line 248
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 248");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 248");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 248");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 248");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 248");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 248");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 248");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 248");

		null_state();
		#10;

		//Testing Truth Table line 249
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 249");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 249");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 249");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 249");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 249");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 249");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 249");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 249");

		null_state();
		#10;

		//Testing Truth Table line 250
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 250");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 250");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 250");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 250");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 250");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 250");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 250");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 250");

		null_state();
		#10;

		//Testing Truth Table line 251
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 251");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 251");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 251");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 251");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 251");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 251");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 251");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 251");

		null_state();
		#10;

		//Testing Truth Table line 252
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 252");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 252");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 252");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 252");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 252");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 252");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 252");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 252");

		null_state();
		#10;

		//Testing Truth Table line 253
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 253");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 253");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 253");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 253");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 253");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 253");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 253");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 253");

		null_state();
		#10;

		//Testing Truth Table line 254
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 254");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 254");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 254");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 254");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 254");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 254");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 254");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 254");

		null_state();
		#10;

		//Testing Truth Table line 255
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 255");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 255");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 255");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 255");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 255");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 255");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 255");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 255");

		null_state();
		#10;

		//Testing Truth Table line 256
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 256");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 256");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 256");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 256");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 256");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 256");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 256");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 256");

		null_state();
		#10;

		//Testing Truth Table line 257
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 257");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 257");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 257");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 257");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 257");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 257");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 257");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 257");

		null_state();
		#10;

		//Testing Truth Table line 258
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 258");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 258");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 258");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 258");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 258");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 258");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 258");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 258");

		null_state();
		#10;

		//Testing Truth Table line 259
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 259");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 259");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 259");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 259");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 259");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 259");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 259");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 259");

		null_state();
		#10;

		//Testing Truth Table line 260
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 260");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 260");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 260");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 260");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 260");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 260");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 260");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 260");

		null_state();
		#10;

		//Testing Truth Table line 261
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 261");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 261");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 261");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 261");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 261");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 261");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 261");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 261");

		null_state();
		#10;

		//Testing Truth Table line 262
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 262");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 262");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 262");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 262");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 262");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 262");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 262");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 262");

		null_state();
		#10;

		//Testing Truth Table line 263
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 263");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 263");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 263");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 263");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 263");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 263");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 263");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 263");

		null_state();
		#10;

		//Testing Truth Table line 264
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 264");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 264");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 264");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 264");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 264");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 264");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 264");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 264");

		null_state();
		#10;

		//Testing Truth Table line 265
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 265");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 265");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 265");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 265");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 265");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 265");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 265");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 265");

		null_state();
		#10;

		//Testing Truth Table line 266
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 266");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 266");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 266");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 266");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 266");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 266");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 266");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 266");

		null_state();
		#10;

		//Testing Truth Table line 267
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 267");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 267");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 267");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 267");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 267");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 267");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 267");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 267");

		null_state();
		#10;

		//Testing Truth Table line 268
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 268");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 268");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 268");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 268");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 268");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 268");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 268");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 268");

		null_state();
		#10;

		//Testing Truth Table line 269
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 269");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 269");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 269");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 269");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 269");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 269");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 269");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 269");

		null_state();
		#10;

		//Testing Truth Table line 270
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 270");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 270");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 270");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 270");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 270");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 270");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 270");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 270");

		null_state();
		#10;

		//Testing Truth Table line 271
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 271");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 271");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 271");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 271");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 271");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 271");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 271");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 271");

		null_state();
		#10;

		//Testing Truth Table line 272
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 272");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 272");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 272");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 272");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 272");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 272");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 272");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 272");

		null_state();
		#10;

		//Testing Truth Table line 273
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 273");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 273");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 273");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 273");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 273");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 273");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 273");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 273");

		null_state();
		#10;

		//Testing Truth Table line 274
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 274");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 274");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 274");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 274");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 274");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 274");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 274");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 274");

		null_state();
		#10;

		//Testing Truth Table line 275
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 275");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 275");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 275");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 275");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 275");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 275");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 275");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 275");

		null_state();
		#10;

		//Testing Truth Table line 276
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 276");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 276");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 276");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 276");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 276");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 276");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 276");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 276");

		null_state();
		#10;

		//Testing Truth Table line 277
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 277");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 277");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 277");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 277");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 277");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 277");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 277");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 277");

		null_state();
		#10;

		//Testing Truth Table line 278
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 278");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 278");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 278");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 278");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 278");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 278");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 278");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 278");

		null_state();
		#10;

		//Testing Truth Table line 279
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 279");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 279");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 279");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 279");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 279");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 279");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 279");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 279");

		null_state();
		#10;

		//Testing Truth Table line 280
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 280");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 280");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 280");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 280");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 280");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 280");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 280");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 280");

		null_state();
		#10;

		//Testing Truth Table line 281
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 281");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 281");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 281");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 281");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 281");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 281");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 281");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 281");

		null_state();
		#10;

		//Testing Truth Table line 282
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 282");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 282");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 282");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 282");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 282");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 282");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 282");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 282");

		null_state();
		#10;

		//Testing Truth Table line 283
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 283");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 283");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 283");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 283");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 283");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 283");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 283");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 283");

		null_state();
		#10;

		//Testing Truth Table line 284
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 284");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 284");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 284");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 284");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 284");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 284");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 284");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 284");

		null_state();
		#10;

		//Testing Truth Table line 285
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 285");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 285");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 285");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 285");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 285");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 285");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 285");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 285");

		null_state();
		#10;

		//Testing Truth Table line 286
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 286");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 286");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 286");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 286");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 286");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 286");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 286");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 286");

		null_state();
		#10;

		//Testing Truth Table line 287
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 287");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 287");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 287");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 287");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 287");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 287");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 287");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 287");

		null_state();
		#10;

		//Testing Truth Table line 288
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 288");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 288");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 288");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 288");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 288");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 288");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 288");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 288");

		null_state();
		#10;

		//Testing Truth Table line 289
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 289");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 289");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 289");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 289");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 289");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 289");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 289");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 289");

		null_state();
		#10;

		//Testing Truth Table line 290
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 290");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 290");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 290");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 290");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 290");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 290");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 290");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 290");

		null_state();
		#10;

		//Testing Truth Table line 291
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 291");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 291");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 291");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 291");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 291");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 291");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 291");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 291");

		null_state();
		#10;

		//Testing Truth Table line 292
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 292");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 292");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 292");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 292");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 292");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 292");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 292");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 292");

		null_state();
		#10;

		//Testing Truth Table line 293
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 293");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 293");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 293");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 293");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 293");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 293");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 293");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 293");

		null_state();
		#10;

		//Testing Truth Table line 294
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 294");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 294");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 294");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 294");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 294");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 294");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 294");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 294");

		null_state();
		#10;

		//Testing Truth Table line 295
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 295");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 295");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 295");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 295");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 295");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 295");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 295");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 295");

		null_state();
		#10;

		//Testing Truth Table line 296
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 296");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 296");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 296");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 296");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 296");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 296");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 296");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 296");

		null_state();
		#10;

		//Testing Truth Table line 297
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 297");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 297");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 297");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 297");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 297");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 297");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 297");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 297");

		null_state();
		#10;

		//Testing Truth Table line 298
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 298");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 298");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 298");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 298");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 298");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 298");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 298");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 298");

		null_state();
		#10;

		//Testing Truth Table line 299
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 299");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 299");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 299");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 299");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 299");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 299");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 299");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 299");

		null_state();
		#10;

		//Testing Truth Table line 300
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 300");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 300");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 300");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 300");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 300");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 300");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 300");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 300");

		null_state();
		#10;

		//Testing Truth Table line 301
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 301");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 301");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 301");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 301");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 301");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 301");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 301");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 301");

		null_state();
		#10;

		//Testing Truth Table line 302
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 302");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 302");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 302");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 302");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 302");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 302");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 302");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 302");

		null_state();
		#10;

		//Testing Truth Table line 303
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 303");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 303");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 303");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 303");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 303");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 303");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 303");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 303");

		null_state();
		#10;

		//Testing Truth Table line 304
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 304");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 304");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 304");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 304");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 304");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 304");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 304");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 304");

		null_state();
		#10;

		//Testing Truth Table line 305
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 305");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 305");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 305");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 305");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 305");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 305");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 305");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 305");

		null_state();
		#10;

		//Testing Truth Table line 306
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 306");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 306");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 306");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 306");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 306");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 306");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 306");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 306");

		null_state();
		#10;

		//Testing Truth Table line 307
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 307");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 307");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 307");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 307");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 307");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 307");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 307");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 307");

		null_state();
		#10;

		//Testing Truth Table line 308
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 308");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 308");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 308");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 308");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 308");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 308");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 308");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 308");

		null_state();
		#10;

		//Testing Truth Table line 309
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 309");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 309");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 309");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 309");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 309");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 309");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 309");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 309");

		null_state();
		#10;

		//Testing Truth Table line 310
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 310");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 310");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 310");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 310");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 310");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 310");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 310");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 310");

		null_state();
		#10;

		//Testing Truth Table line 311
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 311");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 311");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 311");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 311");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 311");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 311");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 311");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 311");

		null_state();
		#10;

		//Testing Truth Table line 312
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 312");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 312");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 312");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 312");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 312");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 312");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 312");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 312");

		null_state();
		#10;

		//Testing Truth Table line 313
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 313");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 313");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 313");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 313");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 313");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 313");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 313");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 313");

		null_state();
		#10;

		//Testing Truth Table line 314
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 314");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 314");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 314");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 314");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 314");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 314");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 314");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 314");

		null_state();
		#10;

		//Testing Truth Table line 315
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 315");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 315");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 315");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 315");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 315");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 315");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 315");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 315");

		null_state();
		#10;

		//Testing Truth Table line 316
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 316");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 316");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 316");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 316");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 316");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 316");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 316");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 316");

		null_state();
		#10;

		//Testing Truth Table line 317
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 317");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 317");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 317");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 317");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 317");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 317");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 317");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 317");

		null_state();
		#10;

		//Testing Truth Table line 318
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 318");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 318");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 318");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 318");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 318");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 318");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 318");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 318");

		null_state();
		#10;

		//Testing Truth Table line 319
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 319");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 319");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 319");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 319");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 319");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 319");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 319");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 319");

		null_state();
		#10;

		//Testing Truth Table line 320
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 320");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 320");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 320");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 320");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 320");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 320");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 320");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 320");

		null_state();
		#10;

		//Testing Truth Table line 321
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 321");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 321");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 321");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 321");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 321");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 321");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 321");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 321");

		null_state();
		#10;

		//Testing Truth Table line 322
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 322");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 322");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 322");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 322");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 322");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 322");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 322");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 322");

		null_state();
		#10;

		//Testing Truth Table line 323
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 323");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 323");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 323");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 323");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 323");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 323");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 323");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 323");

		null_state();
		#10;

		//Testing Truth Table line 324
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 324");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 324");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 324");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 324");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 324");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 324");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 324");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 324");

		null_state();
		#10;

		//Testing Truth Table line 325
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 325");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 325");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 325");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 325");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 325");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 325");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 325");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 325");

		null_state();
		#10;

		//Testing Truth Table line 326
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 326");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 326");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 326");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 326");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 326");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 326");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 326");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 326");

		null_state();
		#10;

		//Testing Truth Table line 327
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 327");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 327");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 327");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 327");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 327");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 327");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 327");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 327");

		null_state();
		#10;

		//Testing Truth Table line 328
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 328");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 328");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 328");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 328");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 328");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 328");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 328");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 328");

		null_state();
		#10;

		//Testing Truth Table line 329
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 329");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 329");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 329");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 329");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 329");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 329");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 329");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 329");

		null_state();
		#10;

		//Testing Truth Table line 330
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 330");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 330");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 330");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 330");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 330");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 330");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 330");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 330");

		null_state();
		#10;

		//Testing Truth Table line 331
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 331");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 331");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 331");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 331");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 331");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 331");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 331");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 331");

		null_state();
		#10;

		//Testing Truth Table line 332
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 332");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 332");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 332");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 332");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 332");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 332");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 332");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 332");

		null_state();
		#10;

		//Testing Truth Table line 333
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 333");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 333");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 333");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 333");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 333");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 333");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 333");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 333");

		null_state();
		#10;

		//Testing Truth Table line 334
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 334");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 334");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 334");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 334");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 334");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 334");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 334");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 334");

		null_state();
		#10;

		//Testing Truth Table line 335
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 335");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 335");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 335");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 335");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 335");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 335");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 335");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 335");

		null_state();
		#10;

		//Testing Truth Table line 336
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 336");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 336");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 336");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 336");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 336");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 336");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 336");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 336");

		null_state();
		#10;

		//Testing Truth Table line 337
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 337");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 337");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 337");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 337");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 337");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 337");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 337");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 337");

		null_state();
		#10;

		//Testing Truth Table line 338
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 338");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 338");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 338");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 338");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 338");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 338");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 338");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 338");

		null_state();
		#10;

		//Testing Truth Table line 339
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 339");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 339");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 339");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 339");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 339");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 339");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 339");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 339");

		null_state();
		#10;

		//Testing Truth Table line 340
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 340");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 340");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 340");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 340");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 340");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 340");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 340");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 340");

		null_state();
		#10;

		//Testing Truth Table line 341
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 341");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 341");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 341");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 341");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 341");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 341");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 341");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 341");

		null_state();
		#10;

		//Testing Truth Table line 342
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 342");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 342");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 342");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 342");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 342");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 342");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 342");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 342");

		null_state();
		#10;

		//Testing Truth Table line 343
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 343");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 343");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 343");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 343");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 343");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 343");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 343");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 343");

		null_state();
		#10;

		//Testing Truth Table line 344
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 344");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 344");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 344");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 344");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 344");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 344");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 344");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 344");

		null_state();
		#10;

		//Testing Truth Table line 345
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 345");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 345");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 345");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 345");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 345");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 345");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 345");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 345");

		null_state();
		#10;

		//Testing Truth Table line 346
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 346");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 346");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 346");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 346");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 346");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 346");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 346");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 346");

		null_state();
		#10;

		//Testing Truth Table line 347
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 347");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 347");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 347");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 347");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 347");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 347");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 347");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 347");

		null_state();
		#10;

		//Testing Truth Table line 348
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 348");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 348");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 348");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 348");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 348");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 348");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 348");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 348");

		null_state();
		#10;

		//Testing Truth Table line 349
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 349");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 349");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 349");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 349");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 349");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 349");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 349");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 349");

		null_state();
		#10;

		//Testing Truth Table line 350
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 350");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 350");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 350");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 350");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 350");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 350");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 350");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 350");

		null_state();
		#10;

		//Testing Truth Table line 351
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 351");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 351");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 351");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 351");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 351");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 351");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 351");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 351");

		null_state();
		#10;

		//Testing Truth Table line 352
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 352");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 352");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 352");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 352");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 352");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 352");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 352");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 352");

		null_state();
		#10;

		//Testing Truth Table line 353
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 353");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 353");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 353");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 353");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 353");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 353");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 353");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 353");

		null_state();
		#10;

		//Testing Truth Table line 354
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 354");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 354");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 354");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 354");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 354");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 354");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 354");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 354");

		null_state();
		#10;

		//Testing Truth Table line 355
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 355");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 355");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 355");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 355");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 355");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 355");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 355");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 355");

		null_state();
		#10;

		//Testing Truth Table line 356
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 356");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 356");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 356");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 356");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 356");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 356");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 356");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 356");

		null_state();
		#10;

		//Testing Truth Table line 357
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 357");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 357");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 357");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 357");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 357");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 357");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 357");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 357");

		null_state();
		#10;

		//Testing Truth Table line 358
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 358");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 358");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 358");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 358");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 358");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 358");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 358");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 358");

		null_state();
		#10;

		//Testing Truth Table line 359
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 359");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 359");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 359");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 359");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 359");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 359");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 359");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 359");

		null_state();
		#10;

		//Testing Truth Table line 360
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 360");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 360");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 360");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 360");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 360");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 360");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 360");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 360");

		null_state();
		#10;

		//Testing Truth Table line 361
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 361");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 361");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 361");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 361");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 361");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 361");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 361");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 361");

		null_state();
		#10;

		//Testing Truth Table line 362
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 362");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 362");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 362");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 362");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 362");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 362");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 362");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 362");

		null_state();
		#10;

		//Testing Truth Table line 363
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 363");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 363");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 363");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 363");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 363");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 363");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 363");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 363");

		null_state();
		#10;

		//Testing Truth Table line 364
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 364");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 364");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 364");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 364");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 364");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 364");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 364");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 364");

		null_state();
		#10;

		//Testing Truth Table line 365
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 365");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 365");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 365");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 365");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 365");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 365");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 365");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 365");

		null_state();
		#10;

		//Testing Truth Table line 366
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 366");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 366");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 366");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 366");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 366");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 366");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 366");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 366");

		null_state();
		#10;

		//Testing Truth Table line 367
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 367");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 367");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 367");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 367");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 367");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 367");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 367");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 367");

		null_state();
		#10;

		//Testing Truth Table line 368
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 368");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 368");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 368");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 368");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 368");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 368");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 368");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 368");

		null_state();
		#10;

		//Testing Truth Table line 369
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 369");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 369");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 369");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 369");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 369");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 369");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 369");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 369");

		null_state();
		#10;

		//Testing Truth Table line 370
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 370");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 370");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 370");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 370");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 370");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 370");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 370");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 370");

		null_state();
		#10;

		//Testing Truth Table line 371
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 371");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 371");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 371");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 371");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 371");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 371");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 371");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 371");

		null_state();
		#10;

		//Testing Truth Table line 372
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 372");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 372");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 372");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 372");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 372");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 372");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 372");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 372");

		null_state();
		#10;

		//Testing Truth Table line 373
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 373");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 373");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 373");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 373");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 373");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 373");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 373");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 373");

		null_state();
		#10;

		//Testing Truth Table line 374
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 374");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 374");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 374");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 374");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 374");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 374");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 374");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 374");

		null_state();
		#10;

		//Testing Truth Table line 375
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 375");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 375");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 375");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 375");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 375");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 375");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 375");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 375");

		null_state();
		#10;

		//Testing Truth Table line 376
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 376");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 376");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 376");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 376");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 376");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 376");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 376");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 376");

		null_state();
		#10;

		//Testing Truth Table line 377
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 377");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 377");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 377");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 377");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 377");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 377");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 377");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 377");

		null_state();
		#10;

		//Testing Truth Table line 378
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 378");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 378");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 378");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 378");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 378");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 378");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 378");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 378");

		null_state();
		#10;

		//Testing Truth Table line 379
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 379");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 379");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 379");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 379");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 379");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 379");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 379");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 379");

		null_state();
		#10;

		//Testing Truth Table line 380
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 380");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 380");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 380");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 380");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 380");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 380");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 380");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 380");

		null_state();
		#10;

		//Testing Truth Table line 381
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 381");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 381");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 381");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 381");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 381");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 381");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 381");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 381");

		null_state();
		#10;

		//Testing Truth Table line 382
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 382");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 382");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 382");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 382");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 382");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 382");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 382");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 382");

		null_state();
		#10;

		//Testing Truth Table line 383
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 383");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 383");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 383");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 383");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 383");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 383");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 383");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 383");

		null_state();
		#10;

		//Testing Truth Table line 384
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 384");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 384");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 384");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 384");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 384");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 384");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 384");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 384");

		null_state();
		#10;

		//Testing Truth Table line 385
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 385");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 385");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 385");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 385");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 385");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 385");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 385");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 385");

		null_state();
		#10;

		//Testing Truth Table line 386
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 386");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 386");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 386");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 386");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 386");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 386");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 386");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 386");

		null_state();
		#10;

		//Testing Truth Table line 387
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 387");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 387");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 387");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 387");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 387");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 387");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 387");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 387");

		null_state();
		#10;

		//Testing Truth Table line 388
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 388");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 388");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 388");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 388");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 388");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 388");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 388");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 388");

		null_state();
		#10;

		//Testing Truth Table line 389
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 389");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 389");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 389");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 389");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 389");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 389");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 389");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 389");

		null_state();
		#10;

		//Testing Truth Table line 390
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 390");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 390");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 390");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 390");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 390");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 390");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 390");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 390");

		null_state();
		#10;

		//Testing Truth Table line 391
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 391");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 391");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 391");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 391");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 391");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 391");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 391");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 391");

		null_state();
		#10;

		//Testing Truth Table line 392
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 392");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 392");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 392");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 392");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 392");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 392");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 392");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 392");

		null_state();
		#10;

		//Testing Truth Table line 393
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 393");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 393");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 393");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 393");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 393");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 393");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 393");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 393");

		null_state();
		#10;

		//Testing Truth Table line 394
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 394");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 394");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 394");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 394");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 394");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 394");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 394");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 394");

		null_state();
		#10;

		//Testing Truth Table line 395
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 395");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 395");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 395");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 395");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 395");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 395");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 395");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 395");

		null_state();
		#10;

		//Testing Truth Table line 396
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 396");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 396");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 396");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 396");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 396");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 396");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 396");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 396");

		null_state();
		#10;

		//Testing Truth Table line 397
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 397");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 397");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 397");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 397");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 397");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 397");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 397");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 397");

		null_state();
		#10;

		//Testing Truth Table line 398
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 398");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 398");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 398");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 398");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 398");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 398");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 398");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 398");

		null_state();
		#10;

		//Testing Truth Table line 399
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 399");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 399");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 399");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 399");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 399");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 399");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 399");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 399");

		null_state();
		#10;

		//Testing Truth Table line 400
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 400");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 400");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 400");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 400");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 400");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 400");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 400");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 400");

		null_state();
		#10;

		//Testing Truth Table line 401
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 401");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 401");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 401");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 401");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 401");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 401");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 401");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 401");

		null_state();
		#10;

		//Testing Truth Table line 402
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 402");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 402");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 402");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 402");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 402");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 402");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 402");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 402");

		null_state();
		#10;

		//Testing Truth Table line 403
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 403");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 403");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 403");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 403");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 403");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 403");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 403");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 403");

		null_state();
		#10;

		//Testing Truth Table line 404
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 404");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 404");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 404");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 404");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 404");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 404");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 404");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 404");

		null_state();
		#10;

		//Testing Truth Table line 405
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 405");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 405");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 405");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 405");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 405");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 405");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 405");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 405");

		null_state();
		#10;

		//Testing Truth Table line 406
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 406");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 406");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 406");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 406");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 406");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 406");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 406");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 406");

		null_state();
		#10;

		//Testing Truth Table line 407
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 407");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 407");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 407");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 407");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 407");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 407");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 407");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 407");

		null_state();
		#10;

		//Testing Truth Table line 408
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 408");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 408");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 408");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 408");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 408");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 408");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 408");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 408");

		null_state();
		#10;

		//Testing Truth Table line 409
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 409");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 409");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 409");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 409");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 409");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 409");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 409");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 409");

		null_state();
		#10;

		//Testing Truth Table line 410
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 410");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 410");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 410");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 410");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 410");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 410");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 410");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 410");

		null_state();
		#10;

		//Testing Truth Table line 411
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 411");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 411");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 411");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 411");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 411");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 411");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 411");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 411");

		null_state();
		#10;

		//Testing Truth Table line 412
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 412");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 412");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 412");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 412");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 412");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 412");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 412");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 412");

		null_state();
		#10;

		//Testing Truth Table line 413
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 413");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 413");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 413");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 413");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 413");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 413");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 413");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 413");

		null_state();
		#10;

		//Testing Truth Table line 414
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 414");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 414");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 414");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 414");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 414");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 414");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 414");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 414");

		null_state();
		#10;

		//Testing Truth Table line 415
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 415");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 415");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 415");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 415");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 415");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 415");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 415");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 415");

		null_state();
		#10;

		//Testing Truth Table line 416
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 416");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 416");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 416");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 416");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 416");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 416");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 416");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 416");

		null_state();
		#10;

		//Testing Truth Table line 417
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 417");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 417");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 417");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 417");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 417");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 417");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 417");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 417");

		null_state();
		#10;

		//Testing Truth Table line 418
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 418");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 418");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 418");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 418");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 418");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 418");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 418");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 418");

		null_state();
		#10;

		//Testing Truth Table line 419
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 419");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 419");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 419");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 419");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 419");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 419");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 419");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 419");

		null_state();
		#10;

		//Testing Truth Table line 420
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 420");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 420");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 420");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 420");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 420");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 420");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 420");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 420");

		null_state();
		#10;

		//Testing Truth Table line 421
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 421");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 421");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 421");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 421");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 421");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 421");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 421");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 421");

		null_state();
		#10;

		//Testing Truth Table line 422
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 422");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 422");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 422");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 422");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 422");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 422");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 422");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 422");

		null_state();
		#10;

		//Testing Truth Table line 423
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 423");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 423");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 423");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 423");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 423");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 423");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 423");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 423");

		null_state();
		#10;

		//Testing Truth Table line 424
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 424");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 424");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 424");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 424");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 424");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 424");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 424");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 424");

		null_state();
		#10;

		//Testing Truth Table line 425
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 425");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 425");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 425");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 425");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 425");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 425");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 425");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 425");

		null_state();
		#10;

		//Testing Truth Table line 426
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 426");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 426");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 426");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 426");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 426");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 426");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 426");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 426");

		null_state();
		#10;

		//Testing Truth Table line 427
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 427");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 427");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 427");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 427");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 427");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 427");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 427");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 427");

		null_state();
		#10;

		//Testing Truth Table line 428
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 428");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 428");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 428");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 428");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 428");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 428");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 428");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 428");

		null_state();
		#10;

		//Testing Truth Table line 429
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 429");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 429");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 429");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 429");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 429");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 429");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 429");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 429");

		null_state();
		#10;

		//Testing Truth Table line 430
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 430");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 430");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 430");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 430");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 430");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 430");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 430");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 430");

		null_state();
		#10;

		//Testing Truth Table line 431
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 431");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 431");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 431");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 431");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 431");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 431");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 431");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 431");

		null_state();
		#10;

		//Testing Truth Table line 432
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 432");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 432");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 432");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 432");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 432");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 432");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 432");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 432");

		null_state();
		#10;

		//Testing Truth Table line 433
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 433");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 433");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 433");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 433");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 433");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 433");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 433");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 433");

		null_state();
		#10;

		//Testing Truth Table line 434
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 434");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 434");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 434");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 434");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 434");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 434");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 434");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 434");

		null_state();
		#10;

		//Testing Truth Table line 435
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 435");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 435");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 435");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 435");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 435");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 435");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 435");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 435");

		null_state();
		#10;

		//Testing Truth Table line 436
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 436");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 436");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 436");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 436");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 436");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 436");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 436");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 436");

		null_state();
		#10;

		//Testing Truth Table line 437
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 437");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 437");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 437");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 437");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 437");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 437");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 437");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 437");

		null_state();
		#10;

		//Testing Truth Table line 438
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 438");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 438");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 438");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 438");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 438");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 438");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 438");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 438");

		null_state();
		#10;

		//Testing Truth Table line 439
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 439");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 439");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 439");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 439");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 439");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 439");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 439");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 439");

		null_state();
		#10;

		//Testing Truth Table line 440
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 440");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 440");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 440");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 440");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 440");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 440");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 440");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 440");

		null_state();
		#10;

		//Testing Truth Table line 441
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 441");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 441");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 441");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 441");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 441");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 441");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 441");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 441");

		null_state();
		#10;

		//Testing Truth Table line 442
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 442");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 442");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 442");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 442");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 442");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 442");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 442");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 442");

		null_state();
		#10;

		//Testing Truth Table line 443
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 443");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 443");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 443");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 443");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 443");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 443");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 443");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 443");

		null_state();
		#10;

		//Testing Truth Table line 444
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 444");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 444");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 444");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 444");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 444");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 444");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 444");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 444");

		null_state();
		#10;

		//Testing Truth Table line 445
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 445");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 445");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 445");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 445");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 445");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 445");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 445");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 445");

		null_state();
		#10;

		//Testing Truth Table line 446
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 446");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 446");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 446");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 446");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 446");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 446");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 446");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 446");

		null_state();
		#10;

		//Testing Truth Table line 447
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 447");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 447");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 447");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 447");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 447");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 447");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 447");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 447");

		null_state();
		#10;

		//Testing Truth Table line 448
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 448");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 448");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 448");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 448");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 448");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 448");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 448");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 448");

		null_state();
		#10;

		//Testing Truth Table line 449
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 449");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 449");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 449");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 449");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 449");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 449");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 449");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 449");

		null_state();
		#10;

		//Testing Truth Table line 450
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 450");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 450");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 450");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 450");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 450");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 450");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 450");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 450");

		null_state();
		#10;

		//Testing Truth Table line 451
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 451");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 451");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 451");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 451");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 451");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 451");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 451");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 451");

		null_state();
		#10;

		//Testing Truth Table line 452
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 452");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 452");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 452");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 452");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 452");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 452");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 452");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 452");

		null_state();
		#10;

		//Testing Truth Table line 453
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 453");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 453");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 453");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 453");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 453");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 453");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 453");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 453");

		null_state();
		#10;

		//Testing Truth Table line 454
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 454");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 454");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 454");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 454");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 454");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 454");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 454");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 454");

		null_state();
		#10;

		//Testing Truth Table line 455
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 455");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 455");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 455");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 455");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 455");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 455");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 455");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 455");

		null_state();
		#10;

		//Testing Truth Table line 456
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 456");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 456");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 456");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 456");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 456");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 456");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 456");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 456");

		null_state();
		#10;

		//Testing Truth Table line 457
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 457");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 457");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 457");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 457");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 457");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 457");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 457");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 457");

		null_state();
		#10;

		//Testing Truth Table line 458
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 458");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 458");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 458");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 458");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 458");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 458");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 458");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 458");

		null_state();
		#10;

		//Testing Truth Table line 459
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 459");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 459");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 459");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 459");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 459");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 459");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 459");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 459");

		null_state();
		#10;

		//Testing Truth Table line 460
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 460");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 460");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 460");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 460");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 460");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 460");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 460");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 460");

		null_state();
		#10;

		//Testing Truth Table line 461
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 461");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 461");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 461");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 461");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 461");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 461");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 461");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 461");

		null_state();
		#10;

		//Testing Truth Table line 462
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 462");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 462");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 462");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 462");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 462");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 462");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 462");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 462");

		null_state();
		#10;

		//Testing Truth Table line 463
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 463");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 463");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 463");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 463");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 463");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 463");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 463");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 463");

		null_state();
		#10;

		//Testing Truth Table line 464
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 464");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 464");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 464");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 464");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 464");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 464");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 464");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 464");

		null_state();
		#10;

		//Testing Truth Table line 465
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 465");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 465");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 465");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 465");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 465");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 465");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 465");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 465");

		null_state();
		#10;

		//Testing Truth Table line 466
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 466");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 466");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 466");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 466");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 466");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 466");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 466");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 466");

		null_state();
		#10;

		//Testing Truth Table line 467
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 467");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 467");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 467");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 467");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 467");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 467");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 467");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 467");

		null_state();
		#10;

		//Testing Truth Table line 468
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 468");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 468");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 468");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 468");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 468");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 468");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 468");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 468");

		null_state();
		#10;

		//Testing Truth Table line 469
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 469");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 469");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 469");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 469");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 469");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 469");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 469");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 469");

		null_state();
		#10;

		//Testing Truth Table line 470
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 470");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 470");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 470");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 470");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 470");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 470");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 470");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 470");

		null_state();
		#10;

		//Testing Truth Table line 471
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 471");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 471");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 471");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 471");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 471");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 471");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 471");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 471");

		null_state();
		#10;

		//Testing Truth Table line 472
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 472");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 472");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 472");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 472");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 472");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 472");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 472");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 472");

		null_state();
		#10;

		//Testing Truth Table line 473
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 473");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 473");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 473");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 473");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 473");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 473");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 473");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 473");

		null_state();
		#10;

		//Testing Truth Table line 474
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 474");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 474");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 474");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 474");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 474");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 474");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 474");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 474");

		null_state();
		#10;

		//Testing Truth Table line 475
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 475");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 475");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 475");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 475");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 475");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 475");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 475");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 475");

		null_state();
		#10;

		//Testing Truth Table line 476
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 476");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 476");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 476");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 476");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 476");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 476");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 476");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 476");

		null_state();
		#10;

		//Testing Truth Table line 477
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 477");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 477");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 477");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 477");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 477");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 477");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 477");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 477");

		null_state();
		#10;

		//Testing Truth Table line 478
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 478");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 478");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 478");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 478");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 478");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 478");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 478");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 478");

		null_state();
		#10;

		//Testing Truth Table line 479
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 479");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 479");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 479");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 479");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 479");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 479");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 479");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 479");

		null_state();
		#10;

		//Testing Truth Table line 480
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 480");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 480");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 480");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 480");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 480");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 480");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 480");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 480");

		null_state();
		#10;

		//Testing Truth Table line 481
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 481");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 481");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 481");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 481");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 481");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 481");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 481");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 481");

		null_state();
		#10;

		//Testing Truth Table line 482
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 482");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 482");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 482");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 482");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 482");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 482");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 482");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 482");

		null_state();
		#10;

		//Testing Truth Table line 483
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 483");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 483");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 483");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 483");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 483");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 483");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 483");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 483");

		null_state();
		#10;

		//Testing Truth Table line 484
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 484");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 484");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 484");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 484");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 484");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 484");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 484");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 484");

		null_state();
		#10;

		//Testing Truth Table line 485
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 485");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 485");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 485");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 485");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 485");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 485");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 485");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 485");

		null_state();
		#10;

		//Testing Truth Table line 486
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 486");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 486");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 486");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 486");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 486");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 486");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 486");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 486");

		null_state();
		#10;

		//Testing Truth Table line 487
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 487");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 487");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 487");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 487");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 487");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 487");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 487");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 487");

		null_state();
		#10;

		//Testing Truth Table line 488
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 488");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 488");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 488");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 488");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 488");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 488");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 488");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 488");

		null_state();
		#10;

		//Testing Truth Table line 489
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 489");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 489");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 489");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 489");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 489");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 489");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 489");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 489");

		null_state();
		#10;

		//Testing Truth Table line 490
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 490");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 490");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 490");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 490");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 490");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 490");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 490");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 490");

		null_state();
		#10;

		//Testing Truth Table line 491
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 491");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 491");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 491");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 491");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 491");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 491");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 491");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 491");

		null_state();
		#10;

		//Testing Truth Table line 492
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 492");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 492");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 492");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 492");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 492");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 492");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 492");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 492");

		null_state();
		#10;

		//Testing Truth Table line 493
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 493");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 493");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 493");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 493");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 493");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 493");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 493");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 493");

		null_state();
		#10;

		//Testing Truth Table line 494
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 494");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 494");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 494");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 494");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 494");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 494");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 494");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 494");

		null_state();
		#10;

		//Testing Truth Table line 495
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 495");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 495");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 495");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 495");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 495");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 495");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 495");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 495");

		null_state();
		#10;

		//Testing Truth Table line 496
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 496");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 496");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 496");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 496");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 496");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 496");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 496");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 496");

		null_state();
		#10;

		//Testing Truth Table line 497
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 497");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 497");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 497");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 497");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 497");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 497");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 497");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 497");

		null_state();
		#10;

		//Testing Truth Table line 498
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 498");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 498");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 498");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 498");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 498");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 498");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 498");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 498");

		null_state();
		#10;

		//Testing Truth Table line 499
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 499");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 499");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 499");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 499");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 499");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 499");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 499");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 499");

		null_state();
		#10;

		//Testing Truth Table line 500
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 500");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 500");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 500");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 500");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 500");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 500");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 500");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 500");

		null_state();
		#10;

		//Testing Truth Table line 501
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 501");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 501");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 501");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 501");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 501");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 501");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 501");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 501");

		null_state();
		#10;

		//Testing Truth Table line 502
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 502");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 502");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 502");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 502");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 502");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 502");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 502");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 502");

		null_state();
		#10;

		//Testing Truth Table line 503
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 503");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 503");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 503");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 503");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 503");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 503");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 503");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 503");

		null_state();
		#10;

		//Testing Truth Table line 504
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 504");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 504");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 504");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 504");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 504");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 504");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 504");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 504");

		null_state();
		#10;

		//Testing Truth Table line 505
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 505");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 505");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 505");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 505");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 505");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 505");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 505");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 505");

		null_state();
		#10;

		//Testing Truth Table line 506
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 506");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 506");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 506");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 506");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 506");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 506");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 506");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 506");

		null_state();
		#10;

		//Testing Truth Table line 507
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 507");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 507");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 507");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 507");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 507");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 507");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 507");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 507");

		null_state();
		#10;

		//Testing Truth Table line 508
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 508");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 508");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 508");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 508");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 508");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 508");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 508");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 508");

		null_state();
		#10;

		//Testing Truth Table line 509
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 509");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 509");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 509");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 509");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 509");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 509");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 509");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 509");

		null_state();
		#10;

		//Testing Truth Table line 510
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 510");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 510");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 510");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 510");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 510");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 510");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 510");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 510");

		null_state();
		#10;

		//Testing Truth Table line 511
		PH0_t=0; PH0_f=1;// PH0==0
		PC3_t=0; PC3_f=1;// PC3==0
		PC2_t=0; PC2_f=1;// PC2==0
		PC1_t=0; PC1_f=1;// PC1==0
		PC0_t=0; PC0_f=1;// PC0==0
		I3_t=0; I3_f=1;// I3==0
		I2_t=0; I2_f=1;// I2==0
		I1_t=0; I1_f=1;// I1==0
		I0_t=0; I0_f=1;// I0==0
		#10;
		if(A3_t==- && A3_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A3 LINE 511");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A3 LINE 511");
		if(A2_t==- && A2_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A2 LINE 511");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A2 LINE 511");
		if(A1_t==- && A1_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A1 LINE 511");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A1 LINE 511");
		if(A0_t==- && A0_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: A0 LINE 511");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: A0 LINE 511");
	end
endmodule 
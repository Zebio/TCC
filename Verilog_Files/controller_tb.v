`timescale 1ns/1ps
module controller_tb();
	reg PH0_t, PH0_f, PH1_t, PH1_f, Rd_t, Rd_f, Ld_t, Ld_f;
	wire R_c_t, R_c_f, R_m_t, R_m_f;

	controller dut(
		PH0_t, PH0_f,
		PH1_t, PH1_f,
		Rd_t, Rd_f,
		Ld_t, Ld_f,
		R_c_t, R_c_f, 
		R_m_t, R_m_f
	);

	task null_state(); begin
		PH0_t=0; PH0_f=0; //PH0==NULL
		PH1_t=0; PH1_f=0; //PH1==NULL
		Rd_t=0; Rd_f=0; //Rd==NULL
		Ld_t=0; Ld_f=0; //Ld==NULL
		end
	endtask

	initial begin

		null_state();
		#10;

		//Testing Truth Table line 0
		PH0_t=0; PH0_f=1;// PH0==0
		PH1_t=0; PH1_f=1;// PH1==0
		Rd_t=0; Rd_f=1;// Rd==0
		Ld_t=0; Ld_f=1;// Ld==0
		#10;
		if(R_c_t==0 && R_c_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_c LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_c LINE 0");
		if(R_m_t==0 && R_m_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_m LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_m LINE 0");

		null_state();
		#10;

		//Testing Truth Table line 1
		PH0_t=0; PH0_f=1;// PH0==0
		PH1_t=0; PH1_f=1;// PH1==0
		Rd_t=0; Rd_f=1;// Rd==0
		Ld_t=1; Ld_f=0;// Ld==1
		#10;
		if(R_c_t==0 && R_c_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_c LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_c LINE 1");
		if(R_m_t==0 && R_m_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_m LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_m LINE 1");

		null_state();
		#10;

		//Testing Truth Table line 2
		PH0_t=0; PH0_f=1;// PH0==0
		PH1_t=0; PH1_f=1;// PH1==0
		Rd_t=1; Rd_f=0;// Rd==1
		Ld_t=0; Ld_f=1;// Ld==0
		#10;
		if(R_c_t==0 && R_c_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_c LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_c LINE 2");
		if(R_m_t==0 && R_m_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_m LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_m LINE 2");

		null_state();
		#10;

		//Testing Truth Table line 3
		PH0_t=0; PH0_f=1;// PH0==0
		PH1_t=0; PH1_f=1;// PH1==0
		Rd_t=1; Rd_f=0;// Rd==1
		Ld_t=1; Ld_f=0;// Ld==1
		#10;
		if(R_c_t==0 && R_c_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_c LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_c LINE 3");
		if(R_m_t==0 && R_m_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_m LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_m LINE 3");

		null_state();
		#10;

		//Testing Truth Table line 4
		PH0_t=0; PH0_f=1;// PH0==0
		PH1_t=1; PH1_f=0;// PH1==1
		Rd_t=0; Rd_f=1;// Rd==0
		Ld_t=0; Ld_f=1;// Ld==0
		#10;
		if(R_c_t==0 && R_c_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_c LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_c LINE 4");
		if(R_m_t==0 && R_m_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_m LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_m LINE 4");

		null_state();
		#10;

		//Testing Truth Table line 5
		PH0_t=0; PH0_f=1;// PH0==0
		PH1_t=1; PH1_f=0;// PH1==1
		Rd_t=0; Rd_f=1;// Rd==0
		Ld_t=1; Ld_f=0;// Ld==1
		#10;
		if(R_c_t==0 && R_c_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_c LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_c LINE 5");
		if(R_m_t==1 && R_m_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: R_m LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_m LINE 5");

		null_state();
		#10;

		//Testing Truth Table line 6
		PH0_t=0; PH0_f=1;// PH0==0
		PH1_t=1; PH1_f=0;// PH1==1
		Rd_t=1; Rd_f=0;// Rd==1
		Ld_t=0; Ld_f=1;// Ld==0
		#10;
		if(R_c_t==1 && R_c_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: R_c LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_c LINE 6");
		if(R_m_t==0 && R_m_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_m LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_m LINE 6");

		null_state();
		#10;

		//Testing Truth Table line 7
		PH0_t=0; PH0_f=1;// PH0==0
		PH1_t=1; PH1_f=0;// PH1==1
		Rd_t=1; Rd_f=0;// Rd==1
		Ld_t=1; Ld_f=0;// Ld==1
		#10;
		if(R_c_t==1 && R_c_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: R_c LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_c LINE 7");
		if(R_m_t==1 && R_m_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: R_m LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_m LINE 7");

		null_state();
		#10;

		//Testing Truth Table line 8
		PH0_t=1; PH0_f=0;// PH0==1
		PH1_t=0; PH1_f=1;// PH1==0
		Rd_t=0; Rd_f=1;// Rd==0
		Ld_t=0; Ld_f=1;// Ld==0
		#10;
		if(R_c_t==0 && R_c_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_c LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_c LINE 8");
		if(R_m_t==1 && R_m_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: R_m LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_m LINE 8");

		null_state();
		#10;

		//Testing Truth Table line 9
		PH0_t=1; PH0_f=0;// PH0==1
		PH1_t=0; PH1_f=1;// PH1==0
		Rd_t=0; Rd_f=1;// Rd==0
		Ld_t=1; Ld_f=0;// Ld==1
		#10;
		if(R_c_t==0 && R_c_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_c LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_c LINE 9");
		if(R_m_t==1 && R_m_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: R_m LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_m LINE 9");

		null_state();
		#10;

		//Testing Truth Table line 10
		PH0_t=1; PH0_f=0;// PH0==1
		PH1_t=0; PH1_f=1;// PH1==0
		Rd_t=1; Rd_f=0;// Rd==1
		Ld_t=0; Ld_f=1;// Ld==0
		#10;
		if(R_c_t==0 && R_c_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_c LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_c LINE 10");
		if(R_m_t==1 && R_m_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: R_m LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_m LINE 10");

		null_state();
		#10;

		//Testing Truth Table line 11
		PH0_t=1; PH0_f=0;// PH0==1
		PH1_t=0; PH1_f=1;// PH1==0
		Rd_t=1; Rd_f=0;// Rd==1
		Ld_t=1; Ld_f=0;// Ld==1
		#10;
		if(R_c_t==0 && R_c_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_c LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_c LINE 11");
		if(R_m_t==1 && R_m_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: R_m LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_m LINE 11");

		null_state();
		#10;

		//Testing Truth Table line 12
		PH0_t=1; PH0_f=0;// PH0==1
		PH1_t=1; PH1_f=0;// PH1==1
		Rd_t=0; Rd_f=1;// Rd==0
		Ld_t=0; Ld_f=1;// Ld==0
		#10;
		if(R_c_t==0 && R_c_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_c LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_c LINE 12");
		if(R_m_t==1 && R_m_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: R_m LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_m LINE 12");

		null_state();
		#10;

		//Testing Truth Table line 13
		PH0_t=1; PH0_f=0;// PH0==1
		PH1_t=1; PH1_f=0;// PH1==1
		Rd_t=0; Rd_f=1;// Rd==0
		Ld_t=1; Ld_f=0;// Ld==1
		#10;
		if(R_c_t==0 && R_c_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_c LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_c LINE 13");
		if(R_m_t==1 && R_m_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: R_m LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_m LINE 13");

		null_state();
		#10;

		//Testing Truth Table line 14
		PH0_t=1; PH0_f=0;// PH0==1
		PH1_t=1; PH1_f=0;// PH1==1
		Rd_t=1; Rd_f=0;// Rd==1
		Ld_t=0; Ld_f=1;// Ld==0
		#10;
		if(R_c_t==0 && R_c_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_c LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_c LINE 14");
		if(R_m_t==1 && R_m_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: R_m LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_m LINE 14");

		null_state();
		#10;

		//Testing Truth Table line 15
		PH0_t=1; PH0_f=0;// PH0==1
		PH1_t=1; PH1_f=0;// PH1==1
		Rd_t=1; Rd_f=0;// Rd==1
		Ld_t=1; Ld_f=0;// Ld==1
		#10;
		if(R_c_t==0 && R_c_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: R_c LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_c LINE 15");
		if(R_m_t==1 && R_m_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: R_m LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: R_m LINE 15");
	end
endmodule 
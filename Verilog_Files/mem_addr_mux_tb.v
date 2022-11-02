`timescale 1ns/1ps
module mem_addr_mux_tb();
	reg PH0_t, PH0_f, Mi_t, Mi_f, SA_t, SA_f, IA_t, IA_f;
	wire Ad_t, Ad_f;

	mem_addr_mux dut(
		PH0_t, PH0_f,
		Mi_t, Mi_f,
		SA_t, SA_f,
		IA_t, IA_f,
		Ad_t, Ad_f
	);

	task null_state(); begin
		PH0_t=0; PH0_f=0; //PH0==NULL
		Mi_t=0; Mi_f=0; //Mi==NULL
		SA_t=0; SA_f=0; //SA==NULL
		IA_t=0; IA_f=0; //IA==NULL
		end
	endtask

	initial begin

		null_state();
		#10;

		//Testing Truth Table line 0
		PH0_t=0; PH0_f=1;// PH0==0
		Mi_t=0; Mi_f=1;// Mi==0
		SA_t=0; SA_f=1;// SA==0
		IA_t=0; IA_f=1;// IA==0
		#10;
		if(Ad_t==N && Ad_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Ad LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Ad LINE 0");

		null_state();
		#10;

		//Testing Truth Table line 1
		PH0_t=0; PH0_f=1;// PH0==0
		Mi_t=0; Mi_f=1;// Mi==0
		SA_t=0; SA_f=1;// SA==0
		IA_t=0; IA_f=1;// IA==0
		#10;
		if(Ad_t==1 && Ad_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Ad LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Ad LINE 1");

		null_state();
		#10;

		//Testing Truth Table line 2
		PH0_t=0; PH0_f=1;// PH0==0
		Mi_t=0; Mi_f=1;// Mi==0
		SA_t=0; SA_f=1;// SA==0
		IA_t=0; IA_f=1;// IA==0
		#10;
		if(Ad_t==0 && Ad_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Ad LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Ad LINE 2");

		null_state();
		#10;

		//Testing Truth Table line 3
		PH0_t=0; PH0_f=1;// PH0==0
		Mi_t=0; Mi_f=1;// Mi==0
		SA_t=0; SA_f=1;// SA==0
		IA_t=0; IA_f=1;// IA==0
		#10;
		if(Ad_t==1 && Ad_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Ad LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Ad LINE 3");

		null_state();
		#10;

		//Testing Truth Table line 4
		PH0_t=0; PH0_f=1;// PH0==0
		Mi_t=0; Mi_f=1;// Mi==0
		SA_t=0; SA_f=1;// SA==0
		IA_t=0; IA_f=1;// IA==0
		#10;
		if(Ad_t==0 && Ad_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Ad LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Ad LINE 4");

		null_state();
		#10;

		//Testing Truth Table line 5
		PH0_t=0; PH0_f=1;// PH0==0
		Mi_t=0; Mi_f=1;// Mi==0
		SA_t=0; SA_f=1;// SA==0
		IA_t=0; IA_f=1;// IA==0
		#10;
		if(Ad_t==X && Ad_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Ad LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Ad LINE 5");

		null_state();
		#10;

		//Testing Truth Table line 6
		PH0_t=0; PH0_f=1;// PH0==0
		Mi_t=0; Mi_f=1;// Mi==0
		SA_t=0; SA_f=1;// SA==0
		IA_t=0; IA_f=1;// IA==0
		#10;
		if(Ad_t==- && Ad_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Ad LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Ad LINE 6");

		null_state();
		#10;

		//Testing Truth Table line 7
		PH0_t=0; PH0_f=1;// PH0==0
		Mi_t=0; Mi_f=1;// Mi==0
		SA_t=0; SA_f=1;// SA==0
		IA_t=0; IA_f=1;// IA==0
		#10;
		if(Ad_t==- && Ad_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Ad LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Ad LINE 7");

		null_state();
		#10;

		//Testing Truth Table line 8
		PH0_t=0; PH0_f=1;// PH0==0
		Mi_t=0; Mi_f=1;// Mi==0
		SA_t=0; SA_f=1;// SA==0
		IA_t=0; IA_f=1;// IA==0
		#10;
		if(Ad_t==- && Ad_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Ad LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Ad LINE 8");

		null_state();
		#10;

		//Testing Truth Table line 9
		PH0_t=0; PH0_f=1;// PH0==0
		Mi_t=0; Mi_f=1;// Mi==0
		SA_t=0; SA_f=1;// SA==0
		IA_t=0; IA_f=1;// IA==0
		#10;
		if(Ad_t==- && Ad_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Ad LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Ad LINE 9");

		null_state();
		#10;

		//Testing Truth Table line 10
		PH0_t=0; PH0_f=1;// PH0==0
		Mi_t=0; Mi_f=1;// Mi==0
		SA_t=0; SA_f=1;// SA==0
		IA_t=0; IA_f=1;// IA==0
		#10;
		if(Ad_t==- && Ad_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Ad LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Ad LINE 10");

		null_state();
		#10;

		//Testing Truth Table line 11
		PH0_t=0; PH0_f=1;// PH0==0
		Mi_t=0; Mi_f=1;// Mi==0
		SA_t=0; SA_f=1;// SA==0
		IA_t=0; IA_f=1;// IA==0
		#10;
		if(Ad_t==- && Ad_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Ad LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Ad LINE 11");

		null_state();
		#10;

		//Testing Truth Table line 12
		PH0_t=0; PH0_f=1;// PH0==0
		Mi_t=0; Mi_f=1;// Mi==0
		SA_t=0; SA_f=1;// SA==0
		IA_t=0; IA_f=1;// IA==0
		#10;
		if(Ad_t==- && Ad_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Ad LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Ad LINE 12");

		null_state();
		#10;

		//Testing Truth Table line 13
		PH0_t=0; PH0_f=1;// PH0==0
		Mi_t=0; Mi_f=1;// Mi==0
		SA_t=0; SA_f=1;// SA==0
		IA_t=0; IA_f=1;// IA==0
		#10;
		if(Ad_t==- && Ad_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Ad LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Ad LINE 13");

		null_state();
		#10;

		//Testing Truth Table line 14
		PH0_t=0; PH0_f=1;// PH0==0
		Mi_t=0; Mi_f=1;// Mi==0
		SA_t=0; SA_f=1;// SA==0
		IA_t=0; IA_f=1;// IA==0
		#10;
		if(Ad_t==- && Ad_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Ad LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Ad LINE 14");

		null_state();
		#10;

		//Testing Truth Table line 15
		PH0_t=0; PH0_f=1;// PH0==0
		Mi_t=0; Mi_f=1;// Mi==0
		SA_t=0; SA_f=1;// SA==0
		IA_t=0; IA_f=1;// IA==0
		#10;
		if(Ad_t==- && Ad_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Ad LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Ad LINE 15");
	end
endmodule 
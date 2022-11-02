`timescale 1ns/1ps
module mux_memory_RW_tb();
	reg PH0_t, PH0_f, MI_t, MI_f;
	wire RW_t, RW_f;

	mux_memory_RW dut(
		PH0_t, PH0_f,
		MI_t, MI_f,
		RW_t, RW_f
	);

	task null_state(); begin
		PH0_t=0; PH0_f=0; //PH0==NULL
		MI_t=0; MI_f=0; //MI==NULL
		end
	endtask

	initial begin

		null_state();
		#10;

		//Testing Truth Table line 0
		PH0_t=0; PH0_f=1;// PH0==0
		MI_t=0; MI_f=1;// MI==0
		#10;
		if(RW_t==0 && RW_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: RW LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: RW LINE 0");

		null_state();
		#10;

		//Testing Truth Table line 1
		PH0_t=0; PH0_f=1;// PH0==0
		MI_t=0; MI_f=1;// MI==0
		#10;
		if(RW_t==1 && RW_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: RW LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: RW LINE 1");

		null_state();
		#10;

		//Testing Truth Table line 2
		PH0_t=0; PH0_f=1;// PH0==0
		MI_t=0; MI_f=1;// MI==0
		#10;
		if(RW_t==1 && RW_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: RW LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: RW LINE 2");

		null_state();
		#10;

		//Testing Truth Table line 3
		PH0_t=0; PH0_f=1;// PH0==0
		MI_t=0; MI_f=1;// MI==0
		#10;
		if(RW_t==- && RW_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: RW LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: RW LINE 3");
	end
endmodule 
`timescale 1ns/1ps
module NCL_xor_tb();
	reg in_a_t, in_a_f, in_b_t, in_b_f;
	wire out_t, out_f;

	NCL_xor dut(
		in_a_t, in_a_f,
		in_b_t, in_b_f,
		out_t, out_f
	);

	task null_state(); begin
		in_a_t=0; in_a_f=0; //in_a==NULL
		in_b_t=0; in_b_f=0; //in_b==NULL
		end
	endtask

	initial begin

		null_state();
		#10;

		//Testing Truth Table line 0
		in_a_t=0; in_a_f=1;// in_a==0
		in_b_t=0; in_b_f=1;// in_b==0
		#10;
		if(out_t==0 && out_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: out LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: out LINE 0");

		null_state();
		#10;

		//Testing Truth Table line 1
		in_a_t=0; in_a_f=1;// in_a==0
		in_b_t=1; in_b_f=0;// in_b==1
		#10;
		if(out_t==1 && out_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: out LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: out LINE 1");

		null_state();
		#10;

		//Testing Truth Table line 2
		in_a_t=1; in_a_f=0;// in_a==1
		in_b_t=0; in_b_f=1;// in_b==0
		#10;
		if(out_t==1 && out_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: out LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: out LINE 2");

		null_state();
		#10;

		//Testing Truth Table line 3
		in_a_t=1; in_a_f=0;// in_a==1
		in_b_t=1; in_b_f=0;// in_b==1
		#10;
		if(out_t==0 && out_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: out LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: out LINE 3");
	end
endmodule 
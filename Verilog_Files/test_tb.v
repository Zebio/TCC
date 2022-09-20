`timescale 1ns/1ps
module test_tb();
	reg A_t, A_f, B_t, B_f, C_t, C_f, D_t, D_f;
	wire Q_t, Q_f;

	test dut(
		A_t, A_f,
		B_t, B_f,
		C_t, C_f,
		D_t, D_f,
		Q_t, Q_f
	);

	task null_state(); begin
		A_t=0; A_f=0; //A==NULL
		B_t=0; B_f=0; //B==NULL
		C_t=0; C_f=0; //C==NULL
		D_t=0; D_f=0; //D==NULL
		end
	endtask

	initial begin

		null_state();
		#10;

		//Testing Truth Table line 0
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		C_t=0; C_f=1;// C==0
		D_t=0; D_f=1;// D==0
		#10;
		if(Q_t==X && Q_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Q LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Q LINE 0");

		null_state();
		#10;

		//Testing Truth Table line 1
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		C_t=0; C_f=1;// C==0
		D_t=0; D_f=1;// D==0
		#10;
		if(Q_t==0 && Q_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Q LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Q LINE 1");

		null_state();
		#10;

		//Testing Truth Table line 2
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		C_t=0; C_f=1;// C==0
		D_t=0; D_f=1;// D==0
		#10;
		if(Q_t==0 && Q_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Q LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Q LINE 2");

		null_state();
		#10;

		//Testing Truth Table line 3
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		C_t=0; C_f=1;// C==0
		D_t=0; D_f=1;// D==0
		#10;
		if(Q_t==1 && Q_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Q LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Q LINE 3");

		null_state();
		#10;

		//Testing Truth Table line 4
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		C_t=0; C_f=1;// C==0
		D_t=0; D_f=1;// D==0
		#10;
		if(Q_t==1 && Q_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Q LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Q LINE 4");

		null_state();
		#10;

		//Testing Truth Table line 5
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		C_t=0; C_f=1;// C==0
		D_t=0; D_f=1;// D==0
		#10;
		if(Q_t==- && Q_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Q LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Q LINE 5");

		null_state();
		#10;

		//Testing Truth Table line 6
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		C_t=0; C_f=1;// C==0
		D_t=0; D_f=1;// D==0
		#10;
		if(Q_t==- && Q_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Q LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Q LINE 6");

		null_state();
		#10;

		//Testing Truth Table line 7
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		C_t=0; C_f=1;// C==0
		D_t=0; D_f=1;// D==0
		#10;
		if(Q_t==- && Q_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Q LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Q LINE 7");

		null_state();
		#10;

		//Testing Truth Table line 8
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		C_t=0; C_f=1;// C==0
		D_t=0; D_f=1;// D==0
		#10;
		if(Q_t==- && Q_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Q LINE 8");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Q LINE 8");

		null_state();
		#10;

		//Testing Truth Table line 9
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		C_t=0; C_f=1;// C==0
		D_t=0; D_f=1;// D==0
		#10;
		if(Q_t==- && Q_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Q LINE 9");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Q LINE 9");

		null_state();
		#10;

		//Testing Truth Table line 10
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		C_t=0; C_f=1;// C==0
		D_t=0; D_f=1;// D==0
		#10;
		if(Q_t==- && Q_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Q LINE 10");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Q LINE 10");

		null_state();
		#10;

		//Testing Truth Table line 11
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		C_t=0; C_f=1;// C==0
		D_t=0; D_f=1;// D==0
		#10;
		if(Q_t==- && Q_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Q LINE 11");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Q LINE 11");

		null_state();
		#10;

		//Testing Truth Table line 12
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		C_t=0; C_f=1;// C==0
		D_t=0; D_f=1;// D==0
		#10;
		if(Q_t==- && Q_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Q LINE 12");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Q LINE 12");

		null_state();
		#10;

		//Testing Truth Table line 13
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		C_t=0; C_f=1;// C==0
		D_t=0; D_f=1;// D==0
		#10;
		if(Q_t==- && Q_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Q LINE 13");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Q LINE 13");

		null_state();
		#10;

		//Testing Truth Table line 14
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		C_t=0; C_f=1;// C==0
		D_t=0; D_f=1;// D==0
		#10;
		if(Q_t==- && Q_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Q LINE 14");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Q LINE 14");

		null_state();
		#10;

		//Testing Truth Table line 15
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		C_t=0; C_f=1;// C==0
		D_t=0; D_f=1;// D==0
		#10;
		if(Q_t==- && Q_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Q LINE 15");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Q LINE 15");
	end
endmodule 
`timescale 1ns/1ps
module Somador_tb();
	reg A_t, A_f, B_t, B_f, Cin_t, Cin_f;
	wire Soma_t, Soma_f, Cout_t, Cout_f;

	Somador dut(
		A_t, A_f,
		B_t, B_f,
		Cin_t, Cin_f,
		Soma_t, Soma_f, 
		Cout_t, Cout_f
	);

	task null_state(); begin
		A_t=0; A_f=0; //A==NULL
		B_t=0; B_f=0; //B==NULL
		Cin_t=0; Cin_f=0; //Cin==NULL
		end
	endtask

	initial begin

		null_state();
		#10;

		//Testing Truth Table line 0
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		Cin_t=0; Cin_f=1;// Cin==0
		#10;
		if(Soma_t==0 && Soma_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: Soma LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Soma LINE 0");
		if(Cout_t==0 && Cout_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: Cout LINE 0");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Cout LINE 0");

		null_state();
		#10;

		//Testing Truth Table line 1
		A_t=0; A_f=1;// A==0
		B_t=0; B_f=1;// B==0
		Cin_t=1; Cin_f=0;// Cin==1
		#10;
		if(Soma_t==1 && Soma_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Soma LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Soma LINE 1");
		if(Cout_t==0 && Cout_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: Cout LINE 1");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Cout LINE 1");

		null_state();
		#10;

		//Testing Truth Table line 2
		A_t=0; A_f=1;// A==0
		B_t=1; B_f=0;// B==1
		Cin_t=0; Cin_f=1;// Cin==0
		#10;
		if(Soma_t==1 && Soma_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Soma LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Soma LINE 2");
		if(Cout_t==0 && Cout_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: Cout LINE 2");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Cout LINE 2");

		null_state();
		#10;

		//Testing Truth Table line 3
		A_t=0; A_f=1;// A==0
		B_t=1; B_f=0;// B==1
		Cin_t=1; Cin_f=0;// Cin==1
		#10;
		if(Soma_t==0 && Soma_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: Soma LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Soma LINE 3");
		if(Cout_t==1 && Cout_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Cout LINE 3");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Cout LINE 3");

		null_state();
		#10;

		//Testing Truth Table line 4
		A_t=1; A_f=0;// A==1
		B_t=0; B_f=1;// B==0
		Cin_t=0; Cin_f=1;// Cin==0
		#10;
		if(Soma_t==1 && Soma_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Soma LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Soma LINE 4");
		if(Cout_t==0 && Cout_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: Cout LINE 4");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Cout LINE 4");

		null_state();
		#10;

		//Testing Truth Table line 5
		A_t=1; A_f=0;// A==1
		B_t=0; B_f=1;// B==0
		Cin_t=1; Cin_f=0;// Cin==1
		#10;
		if(Soma_t==0 && Soma_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: Soma LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Soma LINE 5");
		if(Cout_t==1 && Cout_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Cout LINE 5");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Cout LINE 5");

		null_state();
		#10;

		//Testing Truth Table line 6
		A_t=1; A_f=0;// A==1
		B_t=1; B_f=0;// B==1
		Cin_t=0; Cin_f=1;// Cin==0
		#10;
		if(Soma_t==0 && Soma_f==1)
			$display("CORRECT BEHAVIOR: OUTPUT: Soma LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Soma LINE 6");
		if(Cout_t==1 && Cout_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Cout LINE 6");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Cout LINE 6");

		null_state();
		#10;

		//Testing Truth Table line 7
		A_t=1; A_f=0;// A==1
		B_t=1; B_f=0;// B==1
		Cin_t=1; Cin_f=0;// Cin==1
		#10;
		if(Soma_t==1 && Soma_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Soma LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Soma LINE 7");
		if(Cout_t==1 && Cout_f==0)
			$display("CORRECT BEHAVIOR: OUTPUT: Cout LINE 7");
		else
			$error("INCORRECT BEHAVIOR: OUTPUT: Cout LINE 7");
	end
endmodule 
module Somador(
	input A_t, A_f, B_t, B_f, Cin_t, Cin_f, 
	output Soma_t, Soma_f, Cout_t, Cout_f);

	wire hysteresis;
	assign hysteresis = A_t | A_f | B_t | B_f | Cin_t | Cin_f;

	assign Soma_f= (A_f & B_f & Cin_f) | (A_t & B_t & Cin_f) | (A_f & B_t & Cin_t) | (A_t & B_f & Cin_t) | (hysteresis & Soma_f);
	assign Soma_t= (A_f & B_t & Cin_f) | (A_f & B_f & Cin_t) | (A_t & B_f & Cin_f) | (A_t & B_t & Cin_t) | (hysteresis & Soma_t);
	assign Cout_f= (B_f & Cin_f) | (A_f & B_f) | (A_f & Cin_f) | (hysteresis & Cout_f);
	assign Cout_t= (A_t & B_t) | (B_t & Cin_t) | (A_t & Cin_t) | (hysteresis & Cout_t);

endmodule 

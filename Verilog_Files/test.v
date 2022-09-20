module test(
	input A_t, A_f, B_t, B_f, C_t, C_f, D_t, D_f, 
	output Q_t, Q_f);

	wire hysteresis;
	assign hysteresis = A_t | A_f | B_t | B_f | C_t | C_f | D_t | D_f;

	assign Q_f= (A_f & B_f & C_t) | (A_f & B_f & D_t) | (hysteresis & Q_f);
	assign Q_t= (A_t) | (B_t) | (hysteresis & Q_t);

endmodule 

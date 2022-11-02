module mem_data_demux_NCL(
	input PH0_t, PH0_f, D7_t, D7_f, D6_t, D6_f, D5_t, D5_f, D4_t, D4_f,
			        	D3_t, D3_f, D2_t, D2_f, D1_t, D1_f, D0_t, D0_f,  
	output I7_t, I7_f, C7_t, C7_f);

	wire hysteresis;
	assign hysteresis = PH0_t | PH0_f | D7_t | D7_f | D6_t | D6_f | D5_t | D5_f | D4_t | D4_f | D3_t | D3_f | D2_t | D2_f | D1_t | D1_f | D0_t | D0_f;

	assign I7_f= (PH0_t & D7_f) | (hysteresis & I7_f);
	assign I7_t= (PH0_t & D7_t) | (hysteresis & I7_t);
	assign C7_f= (PH0_f & D7_f) | (hysteresis & C7_f);
	assign C7_t= (PH0_f & D7_t) | (hysteresis & C7_t);

	assign I6_f= (PH0_t & D6_f) | (hysteresis & I6_f);
	assign I6_t= (PH0_t & D6_t) | (hysteresis & I6_t);
	assign C6_f= (PH0_f & D6_f) | (hysteresis & C6_f);
	assign C6_t= (PH0_f & D6_t) | (hysteresis & C6_t);

	assign I5_f= (PH0_t & D5_f) | (hysteresis & I5_f);
	assign I5_t= (PH0_t & D5_t) | (hysteresis & I5_t);
	assign C5_f= (PH0_f & D5_f) | (hysteresis & C5_f);
	assign C5_t= (PH0_f & D5_t) | (hysteresis & C5_t);

	assign I4_f= (PH0_t & D4_f) | (hysteresis & I4_f);
	assign I4_t= (PH0_t & D4_t) | (hysteresis & I4_t);
	assign C4_f= (PH0_f & D4_f) | (hysteresis & C4_f);
	assign C4_t= (PH0_f & D4_t) | (hysteresis & C4_t);

	assign I3_f= (PH0_t & D3_f) | (hysteresis & I3_f);
	assign I3_t= (PH0_t & D3_t) | (hysteresis & I3_t);
	assign C3_f= (PH0_f & D3_f) | (hysteresis & C3_f);
	assign C3_t= (PH0_f & D3_t) | (hysteresis & C3_t);

	assign I2_f= (PH0_t & D2_f) | (hysteresis & I2_f);
	assign I2_t= (PH0_t & D2_t) | (hysteresis & I2_t);
	assign C2_f= (PH0_f & D2_f) | (hysteresis & C2_f);
	assign C2_t= (PH0_f & D2_t) | (hysteresis & C2_t);

	assign I1_f= (PH0_t & D1_f) | (hysteresis & I1_f);
	assign I1_t= (PH0_t & D1_t) | (hysteresis & I1_t);
	assign C1_f= (PH0_f & D1_f) | (hysteresis & C1_f);
	assign C1_t= (PH0_f & D1_t) | (hysteresis & C1_t);

	assign I0_f= (PH0_t & D0_f) | (hysteresis & I0_f);
	assign I0_t= (PH0_t & D0_t) | (hysteresis & I0_t);
	assign C0_f= (PH0_f & D0_f) | (hysteresis & C0_f);
	assign C0_t= (PH0_f & D0_t) | (hysteresis & C0_t);
endmodule 

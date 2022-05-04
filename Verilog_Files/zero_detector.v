module zero_detector(input E1_t, E1_f, E2_t, E2_f, E3_t, E3_f, E4_t, E4_f, 
output zero_t, zero_f );
 

assign zero_t= E1_f & E2_f & E3_f & E4_f  | ((E1_t | E1_f | E2_t | E2_f | E3_t | E3_f | E4_t | E4_f) & zero_t);
 

assign zero_f= E3_t | E2_t | E1_t | E4_t  | ((E1_t | E1_f | E2_t | E2_f | E3_t | E3_f | E4_t | E4_f) & zero_f);
 
endmodule 

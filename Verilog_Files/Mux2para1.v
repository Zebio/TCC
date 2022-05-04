module Mux2para1(input Sel_t, Sel_f, A_t, A_f, B_t, B_f, 
output S_t, S_f );
 

assign S_t= Sel_f & A_t | Sel_t & B_t  | ((Sel_t | Sel_f | A_t | A_f | B_t | B_f) & S_t);
 

assign S_f= Sel_f & A_f | Sel_t & B_f  | ((Sel_t | Sel_f | A_t | A_f | B_t | B_f) & S_f);
 
endmodule 

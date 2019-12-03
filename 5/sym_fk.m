syms('a','b','c','d','t1','t2','t3','t4','t5','ct','st','ct1','st1','ct2','st2','ct3','st3','ct4','st4','ct5','st5');

R1 = create_matrix_sym(0, -pi/2, a, t1, 0);
R1 = subs(R1, ct, ct1);
R1 = subs(R1, st, st1);
R2 = create_matrix_sym(b, 0, 0, t2, -pi/2);
R2 = subs(R2, ct, ct2);
R2 = subs(R2, st, st2);
R3 = create_matrix_sym(c, 0, 0, t3, pi/2);
R3 = subs(R3, ct, ct3);
R3 = subs(R3, st, st3);
R4 = create_matrix_sym(0, -pi/2, 0, t4, -pi/2);
R4 = subs(R4, ct, ct4);
R4 = subs(R4, st, st4);
R5 = create_matrix_sym(0, 0, d, t5, 0);
R5 = subs(R5, ct, ct5);
R5 = subs(R5, st, st5);
% R1
% R2
% R3
% R4
% R5
T = R1*R2*R3*R4*R5;
T = simplify(T);
T
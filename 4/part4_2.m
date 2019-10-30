[pos, R] = RPR_FK(pi, -10, pi/2)

ik_sol = RPR_IK(pos(1), pos(2), pos(3), R)

[pos_ik, R_ik] = RPR_FK(ik_sol(1), ik_sol(2), ik_sol(3))
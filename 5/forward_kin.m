function [H01, H02, H03, H04, H05] = forward_kin(t)
    a = 3;
    b = 5.75;
    c = 7.375;
    d = 4.125;
    e = 1.125;
    R1 = create_matrix(0, -pi/2, a, t(1));
    R2 = create_matrix(b, 0, 0, t(2) - pi/2);
    R3 = create_matrix(c, 0, 0, t(3) + pi/2);
    R4 = create_matrix(0, -pi/2, 0, t(4) - pi/2);
    R5 = create_matrix(0, 0, d, t(5));
    H01 = R1;
    H02 = R1*R2;
    H03 = R1*R2*R3;
    H04 = R1*R2*R3*R4;
    H05 = R1*R2*R3*R4*R5;
end
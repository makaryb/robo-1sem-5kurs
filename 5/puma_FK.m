function [H01, H02, H03, H04, H05, H06] = puma_FK(t)
    a = 13;
    b = 2.5;
    c = 8;
    d = 2.5;
    e = 8;
    f = 2.5;
    R1 = create_matrix(0, pi/2, a, t(1));
    R2 = create_matrix(c, 0, -b, t(2));
    R3 = create_matrix(0, -pi/2, -d, t(3));
    R4 = create_matrix(0, pi/2, e, t(4));
    R5 = create_matrix(0, -pi/2, 0, t(5));
    R6 = create_matrix(0, 0, f, t(6));
    H01 = R1;
    H02 = R1*R2;
    H03 = R1*R2*R3;
    H04 = R1*R2*R3*R4;
    H05 = R1*R2*R3*R4*R5;
    H06 = R1*R2*R3*R4*R5*R6;
end
function R = create_matrix(r, alpha, d, theta)
    R1 = diag([1 1 1 1]);
    R2 = diag([1 1 1 1]);
    T1 = diag([1 1 1 1]);
    T2 = diag([1 1 1 1]);
    R1(1,1) = cos(theta);
    R1(1,2) = -sin(theta);
    R1(2,1) = sin(theta);
    R1(2,2) = cos(theta);
    T1(3,4) = d;
    T2(1,4) = r;
    R2(2,2) = cos(alpha);
    R2(2,3) = -sin(alpha);
    R2(3,2) = sin(alpha);
    R2(3,3) = cos(alpha);
    R = R1*T1*T2*R2;
end
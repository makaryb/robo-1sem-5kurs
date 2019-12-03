function R = create_matrix_sym(r, alpha, d, tsym, tnum)
    syms('ct','st');
    if tsym ~= 0
        if abs(tnum) == pi/2
            R1(1,1) = -st*sin(tnum);
            R1(1,2) = -ct*sin(tnum);
            R1(2,1) = ct*sin(tnum);
            R1(2,2) = -st*sin(tnum);
        else
            R1(1,1) = ct*cos(tnum)-st*sin(tnum);
            R1(1,2) = -(st*cos(tnum)+ct*sin(tnum));
            R1(2,1) = st*cos(tnum)+ct*sin(tnum);
            R1(2,2) = ct*cos(tnum)-st*sin(tnum);
        end
        R1(3,3) = 1;
        R1(4,4) = 1;
        R1(3:4,1:2) = 0;
        R1(1:2,3:4) = 0;
        R1(3,4) = 0;
        R1(4,3) = 0;
    else
        R1 = diag([1 1 1 1]);
        R1(1,1) = cos(tnum);
        R1(1,2) = -sin(tnum);
        R1(2,1) = sin(tnum);
        R1(2,2) = cos(tnum);
    end
    T1 = [[1 0 0 0];[0 1 0 0];[0 0 1 d];[0 0 0 1]];
    T2 = [[1 0 0 r];[0 1 0 0];[0 0 1 0];[0 0 0 1]];
    if abs(alpha) == pi/2
        R2(2,2) = 0;
        R2(2,3) = -sin(alpha);
        R2(3,2) = sin(alpha);
        R2(3,3) = 0;
    else
        R2(2,2) = cos(alpha);
        R2(2,3) = -sin(alpha);
        R2(3,2) = sin(alpha);
        R2(3,3) = cos(alpha);
    end
    R2(1,1) = 1;
    R2(4,4) = 1;
    R2(2:4,1) = 0;
    R2(1,2:4) = 0;
    R2(1:3,4) = 0;
    R2(4,1:3) = 0;
%     R1
%     T1
%     T2
%     R2
    R = R1*T1*T2*R2;
end
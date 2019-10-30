function [P] = ozk(a, alpha, d, tsymb, tdig)

    if tsymb == 0
        P1 = diag([1 1 1 1]);
        P1(1,1) = cos(tdig);
        P1(1,2) = -sin(tdig);
        P1(2,1) = sin(tdig);
        P1(2,2) = cos(tdig);
    else
        P1(1,1) = (cos(tsymb)*cos(tdig) - sin(tsymb)*sin(tdig));
        P1(1,2) = -(sin(tsymb)*cos(tdig) - cos(tsymb)*sin(tdig));
        P1(2,1) = sin(tsymb)*cos(tdig) + cos(tsymb)*sin(tdig);
        P1(2,2) = cos(tsymb)*cos(tdig) - sin(tsymb)*sin(tdig);
        
        P1(3,3) = 1;
        P1(4,4) = 1;
        P1(3:4,1:2) = 0;
        P1(1:2,3:4) = 0;
        P1(3,4) = 0;
        P1(4,3) = 0;
    end
    
    T1 = [[1 0 0 0];[0 1 0 0];[0 0 1 d];[0 0 0 1]];
    T2 = [[1 0 0 a];[0 1 0 0];[0 0 1 0];[0 0 0 1]];
    
    P2(2,2) = cos(alpha);
    P2(2,3) = -sin(alpha);
    P2(3,2) = sin(alpha);
    P2(3,3) = cos(alpha);
    
    P2(1,1) = 1;
    P2(4,4) = 1;
    
    P2(2:4,1) = 0;
    P2(1,2:4) = 0;
    P2(1:3,4) = 0;
    P2(4,1:3) = 0;
    
    P = P1*T1*T2*P2;
    
end
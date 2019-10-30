function [pos, R03] = RPR_FK(t1, d2, t3)
    
    a = 10;
    b = 5;
    
    P1 = denavit_hartenberg(0, -3*pi/4, a, t1);
    P2 = P1*denavit_hartenberg(0, -pi/2, d2, -pi/2);
    P21 = P2*denavit_hartenberg(b, pi/2, 0, t3-pi/4);
    P3 = P21*denavit_hartenberg(0, pi/2, 0, pi/2);
    
    pos = [0 0 0; P1(1,4) P1(2,4) P1(3,4); P2(1,4) P2(2,4) P2(3,4); P3(1,4) P3(2,4) P3(3,4)];
    
    R03 = [P3(1,1) P3(1,2) P3(1,3); P3(2,1) P3(2,2) P3(2,3); P3(3,1) P3(3,2) P3(3,3)];
    
end
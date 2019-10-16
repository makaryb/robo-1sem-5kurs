function [M] = RPR_FK(t1, d2, t3)
    
    a = 10;
    b = 5;
    
    P0 = [0 0 0];
    P1 = denavit_hartenberg(0, -3*pi/4, a, t1);
    P2 = P1*denavit_hartenberg(0, -pi/2, d2, -pi/2);
    P3 = P2*denavit_hartenberg(b/(sqrt(2)), 0, 0, t3);
    
    A = [0 0 0; P1(1,4) P1(2,4) P1(3,4); P2(1,4) P2(2,4) P3(3,4); P3(1,4) P3(2,4) P3(3,4)];
    
    R03 = [P3(1,1) P3(1,2) P3(1,3); P3(2,1) P3(2,2) P3(2,3); P3(3,1) P3(3,2) P3(3,3)];
    
    M = [A; R03];
    
end
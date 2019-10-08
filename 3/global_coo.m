function [M] = global_coo(t1, t2, t3, t4, t5, g)

    M = zeros(10,3);
    
    a = 3;
    b = 5.75;
    c = 7.375;
    d = 4.125;
    e = 1.125;
    
    A1 = denavit_hartenberg(0,-pi/2,a,t1);
    A2 = denavit_hartenberg(b,0,0,t2-pi/2);
    A3 = denavit_hartenberg(c,0,0,t3+pi/2);
    A4 = denavit_hartenberg(0,-pi/2,0,t4-pi/2);
    A5 = denavit_hartenberg(0,0,d,t5);
    
    A0A1 = A1;
    A1A2 = A0A1*A2;
    A2A3 = A1A2*A3;
    A3A4 = A2A3*A4;
    A4A5 = A3A4*A5;
    
    A5A6 = A4A5*[0,0,-e,1]';
    A6A7 = A4A5*[g/2,0,-e,1]';
    A7A8 = A4A5*[-g/2,0,-e,1]';
    A8A9 = A4A5*[g/2,0,0,1]';
    A9A10 = A4A5*[-g/2,0,0,1]';
    
    M = [0 0 0; 
            A0A1(1,4) A0A1(2,4) A0A1(3,4); 
            A1A2(1,4) A1A2(2,4) A1A2(3,4);
            A2A3(1,4) A2A3(2,4) A2A3(3,4);
            A3A4(1,4) A3A4(2,4) A3A4(3,4);
            A4A5(1,4) A4A5(2,4) A4A5(3,4);
            A5A6(1) A5A6(2) A5A6(3);
            A6A7(1) A6A7(2) A6A7(3);
            A7A8(1) A7A8(2) A7A8(3);
            A8A9(1) A8A9(2) A8A9(3);
            A9A10(1) A9A10(2) A9A10(3)];
    
end
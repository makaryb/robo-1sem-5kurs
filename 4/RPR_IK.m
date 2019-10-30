function [ik_sol] = RPR_IK(x, y, z, R)
    
    a = 10;
    b = 5;
    
    if (((z < a + b/2) && (x*x+y*y <= ((a+b-z)*(a+b-z)))) || ((z >= a + b/2) && (x*x+y*y <= (z-a)*(z-a))))
       t1 = atan2(R(2,1), R(1,1));
       t3 = atan2(R(3,3), -R(3,2));
       d2 = 2^(1/2)*(a + b*(sin(t3)) - z);
    end
    
    ik_sol = [t1 d2 t3];

end
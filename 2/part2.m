%вариант 7
%1.7
RotationAxis = [-0.1380, -0.8528, -0.5037];
RotationAngle = 6.1800;

x = RotationAxis(1) * sin(RotationAngle / 2);
y = RotationAxis(2) * sin(RotationAngle / 2);
z = RotationAxis(3) * sin(RotationAngle / 2);
w = cos(RotationAngle / 2);

quaternion = [w,x,y,z]

fprintf("Дальше вторая часть")
%2.7

Q=[0.6442,-0.5851,-0.3146,0.3791];

w = Q(1);
x = Q(2);
y = Q(3);
z = Q(4);

R = [1-2*y*y-2*z*z 2*x*y-2*z*w 2*x*z+2*y*w;
    2*x*y+2*z*w 1-2*x*x-2*z*z 2*y*z-2*x*w;
    2*x*z-2*y*w 2*y*z+2*x*w 1-2*x*x-2*y*y]

fprintf("Дальше третья часть")
%3.7

R = [0.0028, -0.0401, 0.9992;
    0.8698, -0.4929, -0.0222;
    0.4934, 0.8692, 0.0335]

R1 = [1 0 0;0 1 0;0 0 1];
R2 = [-1 0 0;0 1 0;0 0 -1];
R3 = [-1 0 0;0 -1 0;0 0 1];

theta = acos((trace(R2) - 1) / 2)


if theta == 0
    w = [NaN, NaN, NaN];
elseif theta == pi
        c0 = cos(theta);
        s0 = sin(theta);
        v0 = 1-cos(theta);

        wx = sqrt((R2(1,1)-c0)/v0);
        if wx > 0

            wy = R2(1,2)/(wx*v0);
            wz = R2(1,3)/(wx*v0);
        else
            wy = sqrt((R2(2,2)-c0)/v0);
            wz = R2(2,3)/(wy*v0);
        end
        w1 = [wx wy wz]
        w2 = -w1
    
     
else
    w = (1/(sin(theta)))*[R(3,2)-R(2,3), R(1,3)-R(3,1), R(2,1)-R(1,2)]
end
    



quaternion_A = rand (1,4)
quaternion_B = rand (1,4)

q_A = norm(quaternion_A);
q_B = norm(quaternion_B);

quaternion_A = quaternion_A/q_A
quaternion_B = quaternion_B/q_B

u_A = quaternion_A(2:4);
u_B = quaternion_B(2:4);

s_A_1 = quaternion_A(1);
s_B_1 = quaternion_B(1);

S = s_A_1*s_B_1 - u_A*u_B';
C = s_A_1*u_B + s_B_1*u_A + cross(u_A,u_B);
quad = [S C]

fprintf("Дальше другая часть")

vec = rand(1,3)

plot3([0,vec(1)],[0,vec(2)],[0,vec(3)], '--k')

hold on

text(vec(1),vec(2),vec(3),num2str(vec))

plot3(0,0,0, '.k')

xlabel('x')
ylabel('y')
zlabel('z')

set(gca, {'XColor', 'YColor', 'ZColor'}, {'r', 'g', 'b'});

hold on

quat = rand(1,4);
q = norm(quat);
quat = quat/q

w = quat(1)
x = quat(2)
y = quat(3)
z = quat(4)

rotation = [1-2*y*y-2*z*z 2*x*y-2*z*w 2*x*z+2*y*w;
    2*x*y+2*z*w 1-2*x*x-2*z*z 2*y*z-2*x*w;
    2*x*z-2*y*w 2*y*z+2*x*w 1-2*x*x-2*y*y]

new_vec = rotation*vec'
new_vec = new_vec'

plot3([0,new_vec(1)],[0,new_vec(2)],[0,new_vec(3)], ':k')

text(new_vec(1),new_vec(2),new_vec(3),num2str(new_vec))


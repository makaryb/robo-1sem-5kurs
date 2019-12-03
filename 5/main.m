fprintf("1")
t = [pi/2 -pi/2 pi/2 pi/3 pi/2];
dt = [0.1 0.3 0.2 -0.1 0.6];

[linear_V, angular_V] = speed(t, dt)

fprintf("2")
%t0 = [0 0 0 0 0 0];
t1 = [pi/2 -pi/2 pi/4 -pi/6 pi/8 -pi/3];
dt1 = [0.1 -0.2 0.3 0.1 0.4 -0.6];
%H = puma_FK(t0)
[linear_V, angular_V] = puma_speed(t1, dt1)
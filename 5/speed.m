function [V_lin, V_ang] = speed(t, dt)
    [H01, H02, H03, H04, H05] = forward_kin(t);
    %V_ang1 = zeros(3,5);
    P0 = [0 0 0]';
    P1 = H01(1:3,4);
    P2 = H02(1:3,4);
    P3 = H03(1:3,4);
    P4 = H04(1:3,4);
    P5 = H05(1:3,4);
    V_lin1(:,1) = cross([0 0 1],(P5-P0));
%     H01(1:3,3)
    V_lin1(:,2) = cross(H01(1:3,3),(P5-P1));
%     H02(1:3,3)
    V_lin1(:,3) = cross(H02(1:3,3),(P5-P2));
%     H03(1:3,3)
    V_lin1(:,4) = cross(H03(1:3,3),(P5-P3));
%     H04(1:3,3)
    V_lin1(:,5) = cross(H04(1:3,3),(P5-P4));
%     V_lin1
    V_ang1 = [[0 0 1]' H01(1:3,3) H02(1:3,3) H03(1:3,3) H04(1:3,3)];
    V_ang = V_ang1*dt';
    V_lin = V_lin1*dt'; %cross(H04(1:3,3),(P5-P4));
end
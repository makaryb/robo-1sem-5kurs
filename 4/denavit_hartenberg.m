function [A] = denavit_hartenberg(r, a, d, teta)

    A = zeros(4, 4);
    
    A = [cos(teta) -sin(teta)*cos(a) sin(teta)*sin(a) r*cos(teta);
            sin(teta) cos(teta)*cos(a) -cos(teta)*sin(a) r*sin(teta);
            0 sin(a) cos(a) d;
            0 0 0 1];

end
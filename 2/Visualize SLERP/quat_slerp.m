function [ q_int ] = quat_slerp( q0, q1, steps )
%QUAT_SLERP Perform SLERP between two quaternions and return the intermediate quaternions
%   Usage: [ q_int ] = quat_slerp( q0, q1, steps )
%   Inputs:
%       q0 is the quaternion representing the starting orientation, 1x4 matrix
%       q1 is the quaternion representing the final orientation, 1x4 matrix
%       steps is the number of intermediate quaternions required to be returned, integer value
%       The first step is q0, and the last step is q1
%   Output:
%       q_int contains q0, steps-2 intermediate quaternions, q1
%       q_int is a (steps x 4) matrix

    %% Your code goes here
    q_int = zeros(steps, 4);
   
    q0 = q0/norm(q0);
    q1 = q1/norm(q1);
    
    Om = acos(dot(q0,q1));
    
    if Om > pi
        temp = q0;
        q0 = q1;
        q1 = temp;
    end
   
    q_int(1,:) = q0;
    q_int(steps,:) = q1;
    
    for t = 2:(steps-1)
        q_int(t,:) = (sin((1-t/steps)*Om)/sin(Om))*q0+(sin((t/steps)*Om)/sin(Om))*q1;
    end
end
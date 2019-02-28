function [c, theta] = triangle(a, b)
% Calculates hypotenuse length and angle between side a and hypotenuse
% INPUTS
% a = length of side 1 (units of inputs will be units of output) (size 1x1)
% b = length of side 2 (same units as side 1) (size 1x1)
% OUTPUTS
% c = length of hypotenuse (same units as sides 1 & 2) (size 1x1)
% theta = angle between side 1 and hypotenuse (radians) (size 1x1)

    c = sqrt(a^2 + b^2);
    theta = atan(b/a);

end

function [x1, x2, rootType] = quadFunc(a, b, c)
% Solves quadratic equation for given alues a, b, and c
% INPUTS
% a - 1x1 scalar, second-order coefficient
% b - 1x1 scalar, first-order coefficient
% c - 1x1 scalar, constant
discriminant = b^2 - 4*a*c;
x1 = (-b - sqrt(discriminant))/(2*a);
x2 = (-b + sqrt(discriminant))/(2*a);
if discriminant > 0
    rootType = "Two real roots";
elseif discriminant < 0
    rootType = "Complex roots";
else
    rootType = "Equal roots";
end
disp(x1);
disp(x2);
disp(rootType);
end

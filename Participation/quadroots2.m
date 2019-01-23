%% quadroots2.m
% Use quadratic equation to calculate roots of an equation
% Author: Len Pieroni
% Completed without assistance

%% INPUT
% Quadratic Equation
% 3 Inputs: a, b, c

a = input('Input a Value (Coefficient of x^2)');
b = input('Input b Value (Coefficient of x)');
c = input('Input c Value (Constant)');

%% CALCULATION
% x = (-b +- sqrt(b^2 + 4ac))/(2a)

if b^2 > 4*a*c % IF SQUARE ROOT IS POSITIVE, THERE ARE 2 RESULTS
	result1 = (-b + sqrt(b^2 - 4*a*c))/(2*a);
	result2 = (-b - sqrt(b^2 - 4*a*c))/(2*a);
elseif b^2 == 4*a*c % IF SQUARE ROOT IS ZERO, THERE IS 1 RESULT
	result1 = (-b + sqrt(b^2 - 4*a*c))/(2*a);
else
	result1 = 'COMPLEX';
end

%% OUTPUT
% Output 0, 1, or 2 results

% Format output
if b^2 > 4*a*c %IF THERE ARE 2 RESULTS, DISPLAY 2 RESULTS
        output = ['The roots of the equation are: ', num2str(result1), ' and ', num2str(result2)];
elseif b^2 == 4*a*c %IF THERE IS 1 RESULT, DISPLAY 1 RESULT
	output = ['The root of the equation is: ', num2str(result1)];
else % IF THE ROOTS ARE COMPLEX, SAY SO
        output = ["The equation's roots are complex."];
end
disp(output)
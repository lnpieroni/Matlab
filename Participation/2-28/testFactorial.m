%% testFactorial.m
% Compares myFactorial function against MATLAB's built-in function
% Author: Len Pieroni
% No assistance

facInput = input('Enter a test value: ');
customFacVal = myFactorial(facInput);
builtinFacVal = factorial(facInput);
if customFacVal == builtinFacVal
    disp("Both functions calculated the value of " + num2str(facInput)...
        + "! to be " + num2str(customFacVal) + ". Good work!");
else
    disp("Your function is wrong.");
end
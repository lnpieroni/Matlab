%% Log Control Testing
% Models how the experimental nonlinear control curve reacts to actual
% controls

clear;
clc;

%% Inputs and Parameters

% Create a pair of arrays for holding simulated joystick inputs
% 5 sample values
% frontBack = zeros(5);
% leftRight = zeros(5);

frontBack = [255, -255, -255, 255, 0, 63, 63, 127, 15, 27];
leftRight = [255, 255, -255, -255, 255, 63, 0, 127, 0, 0];

% Populate both pairs of arrays
% for a = 1:5
%    frontBack(a) = input("Enter Forward/Back Value #" + num2str(a) + ": ");
%    leftRight(a) = input("Enter Left/Right Value #" + num2str(a) + ": ");
% end

%% Calculations

% Restrict motor powers to -1:1
outputL = (frontBack + leftRight);
outputR = (frontBack - leftRight);

mtrPwrL = sqrt(abs(outputL)) .* sign(outputL) / sqrt(510);
mtrPwrR = sqrt(abs(outputR)) .* sign(outputR) / sqrt(510);

%% Outputs
displays = "Forward/Back: " + frontBack + newline...
    + "Left/Right: " + leftRight + newline...
    + "Left Side Value: " + outputL + newline...
    + "Right Side Value: " + outputR + newline...
    + "Left Side Power: " + mtrPwrL + newline...
    + "Right Side Power: " + mtrPwrR + newline + newline;

for i = 1:10
    disp("Sample #" + i);
    disp(displays(i));
    disp("");
end
%% nonlinear.m
% Model nonlinear curve for low-value sensitivity

clear;
clc;

%% Inputs and Parameters
lStick = -127:127;
rStick = [-127; -63; 0; 63; 127];

inputs = lStick + rStick;

%% Calculations
mtrPwr = (log(abs(inputs)) .* sign(inputs) / log(254));

%% Plotting
plot3(lStick, [-127:127], mtrPwr, "b-x");

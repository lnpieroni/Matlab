%% nonlinear.m
% Model nonlinear curve for low-value sensitivity

clear;
clc;

%% Inputs and Parameters

inputs = linspace(-255, 255, 511);

%% Calculations
mtrPwr = (log(abs(inputs)) .* sign(inputs)) / (log(255));

%% Plotting
plot(inputs, mtrPwr, "-o");

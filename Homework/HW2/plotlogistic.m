%% plotlogistic.m
% Plots logistic function p(y) = 1/(1+e^((-y-y0)/a)
% Author: Len Pieroni
% No assistance

clear;
clc;

%% Parameters & Variables
yMin = 0;
yMax = 50;
Ny = 250;

y0 = 50;
a = 5;

y = linspace(yMin, yMax, Ny);

%% Function Generation
pY = exp((y-y0)/a).^-1;

%% Plotting
plot(y, pY, "r-o");
xlabel("Y Values");
ylabel("p(y) Values");
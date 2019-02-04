%% plotdamped.m
% Simulates damped harmonic motion with the equation
% f(x) = e^(-x/alpha)*cos(2*PI*x/lambda)
% Author: Len Pieroni
% No assistance

clear;
clc;

%% Parameters and variables

alpha = 5;
lambda = 2;
e = 2.71828;
x = linspace(0, 10, 250);

%% Calculation

y = e.^(-x/alpha).*cos(2*pi*x/lambda);

%% Draw graph

plot(x, y, "-o");
xlabel("Time (secs)");
ylabel("Position (ft)");

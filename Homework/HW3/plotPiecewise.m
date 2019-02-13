%% plotPiecewise.m
% Plot a piecewise function
% Author: Len Pieroni
% No assistance

clear;
clc;

%% Generate piecewise domains
x1 = [-1.5:.125:-1];
x2 = [-1:.125:1];
x3 = [1:.125:1.5];
x4 = [-2:.125:-1.5];
x5 = [1.5:.125:2];

%% Generate piecewise y-values
y1 = 2.*x1 + 3;
y2 = -sin(pi.*x2.*.5);
y3 = 2.*x3 - 3;
y4 = zeros(1, 5);
y5 = zeros(1, 5);

%% Plot piecewise functions
hold on;
plot(x1, y1, "b-");
plot(x2, y2, "b-");
plot(x3, y3, "b-");
plot(x4, y4, "b-");
plot(x5, y5, "b-");
hold off;
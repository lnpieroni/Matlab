%% plotellipse.m
% Animated ellipse plotting
% Author: Len Pieroni
% No assistance

clear;
clc;
close all;

%% Parameter intialization

tMin = 0;
tMax = 3.5;
Nt = 140;


rad = 5;
omega = 3;
phi = 1;

time = linspace(tMin, tMax, Nt);

%% Point generation

xVals = rad.*cos(omega.*time);
yVals = rad.*sin(omega.*time + phi);

for iterCount = 1:Nt
    plot(xVals(1:iterCount), yVals(1:iterCount), "b-",...
        xVals(iterCount), yVals(iterCount), "ro");
    axis([-rad, rad, -rad, rad]);
    drawnow;
end
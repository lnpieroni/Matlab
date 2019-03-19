%% eulerTemp.m
% Approximates temperature as a function of time
% Author: Len Pieroni
% No assistance

clear;
clc;

%% Parameters
k = -0.028;
T = 60;
y(1) = 100;
timeMin = 0;
timeMax = 180;
timeInterval = .1;

%% Calculations

for index = 2:(timeMax-timeMin)/timeInterval;
    y(index) = y(index-1) + timeInterval*(k*(y(index-1)-T));
end

%% Draw plot
plot(linspace(0, 180, 1800), y, "b-");
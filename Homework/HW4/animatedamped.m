%% animatedamped.m
% Simulates damped harmonic motion with the equation
% f(x) = e^(-x/alpha)*cos(2*PI*x/lambda)
% Author: Len Pieroni
% No assistance

clear;
clc;
close all;

%% Parameters and variables

Nx = 250;

doAnimate = true;
alpha = 5;
lambda = 2;
e = 2.71828;
x = linspace(0, 10, Nx);

%% Calculation

y = e.^(-x/alpha).*cos(2*pi*x/lambda);

%% Draw graph

if doAnimate
    for iterCount = 1:Nx
        plot(x(1:iterCount), y(1:iterCount), "b-",...
            x(iterCount), y(iterCount), "ro");
        xlabel("Time (secs)");
        ylabel("Position (ft)");
        axis([0, 10, -1, 1]);
        axis square;
        grid on;
        drawnow;
    end
else
    plot(x, y, "k-o");
    xlabel("Time (secs)");
    ylabel("Position (ft)");
    axis([0, 10, -1, 1]);
    axis square;
    grid on;
end
    
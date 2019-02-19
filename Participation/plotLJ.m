%% plotLJ.m
% Plots a goofy-looking curve parametrically
% Author: Len Pieroni

clear;
clc;
close all;

%% Parameters and Variable Initialization
a = 2;
b = 5;
r = 3;
tau = 1;
phi = 4;
endTime = 2;
timePoints = 400;
animateOn = true;
time = linspace(1, endTime, timePoints);

%% Draw graph

x = r.*cos(time.*2.*pi./tau.*a);
y = r.*sin(time.*2.*pi./tau.*b+phi);

if animateOn
    for it = 1:timePoints
        axis([-4, 4, -4, 4]);
        axis square;
        grid on;
        xlabel('x');
        ylabel('y');
        plot(x(1:it), y(1:it), "b",...
            x(it), y(it), "ro");
        drawnow;
    end
else
    plot(x, y, "b-",...
        x, y, "ro");
    axis([-4, 4, -4, 4]);
    axis square;
    grid on;
    xlabel('x');
    ylabel('y');

end
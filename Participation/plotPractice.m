%% plotPractice.m
% Practice using Matlab's plot function
% Plots the equation y = cos(2*PI*x/L)
% Author: Len Pieroni

%% PARAMETERS

xmin = 0;
xmax = 6; 
Nx = 100;
L = 5;

%% CREATE ARRAYS

x = linspace(xmin, xmax, Nx);
y = cos(2*pi*x/L);

xexp = [1, 2, 3, 4, 5];
Trial1 = [0.38, -0.82, -0.79, 0.28, 0.93];
Trial2 = [0.36, -0.80, -0.88, 0.45, 1.10];
Trial3 = [0.22, -0.67, -0.94, 0.27, 0.98];

%% MAKE PLOTS

figure;
hold on;
plot(x, y, 'r');
plot(xexp, Trial1, 'bo',...
	xexp, Trial2, 'kd',...
	xexp, Trial3, 'mx');
legend('Theoretical Data', 'Trial 1 Data', 'Trial 2 Data', 'Trial 3 Data');
xlabel('x Value');
ylabel('y Value');
hold off;
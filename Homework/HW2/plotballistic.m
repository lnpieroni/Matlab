%% plotballistic.m
% Plot ballistic trajectory equation
% Author: Len Pieroni
% No assistance

%% Parameters and Variables

ho = 10;
vo = 10;
g = 9.8;
t = linspace(0, 10, 250);

%% Calculation

h = ho + t.*vo - ((t.^2).*(.5*g));

%% Draw graph

plot(t, h, "-o");
xlabel("Time (secs)");
ylabel("Height (m)");
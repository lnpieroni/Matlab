%% eulerPop.m
% Approximates population using Euler method

clear;
clc;


%% Establish variables and parameters

deltaT = .001;
startTime = 0;
endTime = 20;

initialPop = 800;
maxPop = 10000;
growthRate = .00005;

timeIntervals = startTime:deltaT:endTime;
population = zeros(1, length(timeIntervals));
population(1) = initialPop;
for i = 2:length(timeIntervals)
    population(i) = population(i-1) + growthRate*(maxPop-population(i-1))*population(i-1)*deltaT;
%     disp("The population at time " + num2str(deltaT*(i-1))+ " is " +...
%         num2str(population(i)) + " people.");
end
disp("The final population is approximately "...
    + num2str(population(length(population)))...
    + " people.");
plot(timeIntervals, population, "r-");
axis([startTime, endTime, initialPop-100, maxPop+100]);
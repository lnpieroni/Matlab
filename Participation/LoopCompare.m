%% LoopCompare.m
% Use for & while loops as well as mean function to calculate average
% Author: Len Pieroni
% No assistance

clear;
clc;

%% Get input
Nvec = input("How many integers do you want to generate? ");

%% Array & Variable Generation
randArr = randi(100, 1, Nvec);
avgArr = [0, 0, 0];
% avgArr(1) = for loop average
% avgArr(2) = while loop average
% avgArr(3) = mean function average

%% For loop calculation
for i = 1:Nvec
    avgArr(1) = avgArr(1) + randArr(i);
end
avgArr(1) = avgArr(1) / Nvec;

%% While loop calculation
j = 0;
while j < Nvec
    avgArr(2) = avgArr(2) + randArr(j+1);
    j = j+1;
end
avgArr(2) = avgArr(2) / Nvec;

%% Mean function calculation
avgArr(3) = mean(randArr);

disp("For loop average: " + num2str(avgArr(1)));
disp("While loop average: " + num2str(avgArr(2)));
disp("Mean function average: " + num2str(avgArr(3)));
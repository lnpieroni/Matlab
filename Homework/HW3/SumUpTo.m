%% SumUpTo.m
% Calculate sum of positive integers up to N
% Author: Len Pieroni
% No assistance

clear;
clc;

%% Get input and create sum variable
upperLim = input("Upper limit of partial sum: ");
sum = 0;

%% Compute partial sum
for integer = 1:upperLim
    sum = sum + integer;
end
disp(sum);
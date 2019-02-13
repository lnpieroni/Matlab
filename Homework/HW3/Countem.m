%% Countem.m
% Count by ones from n0 to N
% Author: Len Pieroni
% No assistance

clear;
clc;

%% Get inputs
n0 = input("Starting value: ");
intCount = input("How many integers to count? ");

%% Initialize string variable
outputStr = num2str(n0);

%% Count
for count = 1:(intCount-1)
    outputStr = outputStr + ", " + num2str(n0 + count);
end
disp(outputStr);
%% hwAnalysis.m
% Calculate mean and standard deviation of homework assignments
% Author: Len Pieroni
% No assistance

%%Initialize command window
clear;
clc;

%% Load data and get inputs
filename = "HomeworkData.txt";
hwRawData = load(filename);

assignmentNum = input("Enter Assignment #");

%% Calculate mean & standard deviation

means = mean(hwRawData); % Average score of each assignment
stdevs = std(hwRawData); % Standard deviation of each assignment

%% Output

out = "The mean score for assignment #" + num2str(assignmentNum)...
    + " is " + num2str(means(assignmentNum)) + "%" + char(10)...
    + "The standard deviation of assignment #" + num2str(assignmentNum)...
    + " is " + num2str(stdevs(assignmentNum));

disp(out);
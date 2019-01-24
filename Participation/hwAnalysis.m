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
studentNum = input("Enter Student #");

%% Calculate mean & standard deviation

assMeans = mean(hwRawData); % Average score of each assignment
assDevs = std(hwRawData); % Standard deviation of each assignment

studentMeans = mean(hwRawData, 2);
studentDevs = std(hwRawData, 0, 2);

%% Output

out = "The mean score for assignment #" + num2str(assignmentNum)...
    + " is " + num2str(assMeans(assignmentNum)) + "%" + char(10)...
    + "The standard deviation of assignment #" + num2str(assignmentNum)...
    + " is " + num2str(assDevs(assignmentNum)) + char(10)...
    + "The mean score for student #" + num2str(studentNum)...
    + " is " + num2str(studentMeans(assignmentNum)) + "%" + char(10)...
    + "The standard deviation of assignment #" + num2str(assignmentNum)...
    + " is " + num2str(studentDevs(assignmentNum));


disp(out);
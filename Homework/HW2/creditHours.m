%% creditHours.m
% Calculate credit hours of 3 classes from 3 students' GPAs
% Author: Len Pieroni
% No assistance

clear;
clc;

%% Matrix & Vector Population
% 3x3 Matrix containing point values of the 3 students' 3 grades
grades = [2, 4, 3;...
    4, 3, 3;...
    3, 4, 4];
% 1x3 column vector containing 3 students' total quality points
qPoints = [24.5; 28.5; 31.0];

%% Solutions
% Column vector containing credit hours of EG 101, EG102, and EG103
% respectively
cHours = grades\qPoints;

%% Output
output = "EG101: " + num2str(round(cHours(1), 0)) + " credit hours" + newline...
    + "EG101: " + num2str(round(cHours(2), 0)) + " credit hours" + newline...
    + "EG103: " + num2str(round(cHours(3), 0)) + " credit hours" + newline;
disp(output);
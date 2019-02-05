%% hwCompare.m
% Calculate student and assignment average scores
% Author: Len Pieroni
% No assistance

clear;
clc;

%% Load data into program
hwData = load('HomeworkData.txt');

%% Ask for student number
studentNum = input("Input student number: ");

%% Calculate student's average score
sum = 0;
for i = 1:7
    sum = sum + hwData(studentNum, i);
end
studentAvg = sum / 7;

%% Output student score
output = "Student #"...
    + num2str(studentNum)...
    + " has an average homework score of "...
    + num2str(studentAvg);
disp(output);

%% Calculate average scores for each homework assignment
hwAvg = [0, 0, 0, 0, 0, 0, 0];
for hwCt = 1:7
    hwAvg(hwCt) = mean(hwData(:, hwCt));
end

%% Find lowest score
lowest = 150;
for iHwScore = 1:7
    if(hwAvg(iHwScore) < lowest)
        lowest = hwAvg(iHwScore);
    end
end

disp("The lowest average assignment score is " + num2str(lowest));

%% Plot homework scores
plot(hwAvg, "b--o");
xlabel("Homework Number");
ylabel("Average Score");

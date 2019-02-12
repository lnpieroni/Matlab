%% evens.m
% Generate 20 random even integers
% Author: Len Pieroni
% No assistance

clear;
clc;

%% Variable Creation

evenCt = 0; % Number of even integers generated
oddCt = 0; % Number of odd integers generated
intCt = 0; % Number of integers generated
randInt = 0; % Container for randomly generated integer

%% Integer generation
while evenCt < 20
    randInt = randi(50);
    intCt = intCt + 1;
    if(rem(randInt, 2) == 0)
        evenCt = evenCt + 1;
    else
        oddCt = oddCt + 1;
    end
end

disp("Total number of integers generated: " + num2str(intCt));
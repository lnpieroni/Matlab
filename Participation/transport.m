%% transport.m
% Suggests a mode of transportation
% Author: Len Pieroni
% No assistance

clear;
clc;
%% Inputs and Parameters
% Distances in miles

maxWalkDist = 1;
maxBikeDist = 5;
maxDriveDist = 250;

transitMethod = ["walk", "bike", "drive", "fly"];

prompt = "Enter distance to destination (miles): ";
distance = input(prompt);

prompt = "Can you ride a bike? (0 for no, 1 for yes) ";
bCanRideBike = input(prompt);

%% Determine Transport Method

if distance <= maxWalkDist
    recommendation = transitMethod(1);
elseif distance <= maxBikeDist && bCanRideBike
    recommendation = transitMethod(2);
elseif distance <= maxDriveDist
    recommendation = transitMethod(3);
else
    recommendation = transitMethod(4);
end

%% Output

disp("You should "...
    + recommendation...
    + " to your destination because it is "...
    + distance...
    + " miles away.");
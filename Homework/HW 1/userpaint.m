%% userpaint.m
% Calculate amount of paint needed to paint a room
% Author: Len Pieroni
% No assistance

%% Parameters and Inputs

areaPerGal = 400; % 400 sq ft per gallon of paint

name = input("What's your name?", 's');

roomDims = zeros(3); % length, width, height
roomDims(1) = input('Enter room length (ft)');
roomDims(2) = input('Enter room width (ft)');
roomDims(3) = input('Enter room height (ft)');

windowCount = input('How many windows are there?');
windowSize = input('What is the area of each window (ft^2)?');

doorCount = input('How many doors are there?');
doorSize = input('How big is each door (ft^2)?');

%% Calculate surface area to be painted

surfArea = (2*roomDims(1)*roomDims(3))... % 2 walls lengthwise
    + (2*roomDims(2)*roomDims(3))... % 2 walls widthwise
    + (roomDims(1)*roomDims(2))... % Ceiling (floor doesn't get painted)
    - (windowCount*windowSize)... % Windows don't get painted
    - (doorCount*doorSize); % Doors don't get painted
paintVol = surfArea/areaPerGal;

%% Output results

out = "Hello, " + name + "! You will need "...
    + paintVol + " gallons of paint to cover "...
    + surfArea + " square feet of walls with paint.";
disp(out);
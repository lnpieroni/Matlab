%% candyCreation.m
% Generates 100 M&M color-flavor pairings randomly

clear;
clc;

%% Variable and Cell Array Initialization

candyCount = 100;

colorNames = {"brown", "yellow", "red", "orange", "green", "blue"};
fillingNames = {"milk chocolate", "dark chocolate", "peanut butter", "peanuts", "caramel"};

candyColors = {"_"};
candyFillings = {"-"};

colorCounts = zeros(1, 6);
fillingCounts = zeros(1, 5);
greenMilkComboCount = 0;

%% Color-Filling Generation
colorInts = randi(6, 1, candyCount);
fillingInts = randi(5, 1, candyCount);

%% Cell Array Assignments and Counting
for candyIndex = 1:candyCount
    candyColors{candyIndex} = colorNames{colorInts(candyIndex)};
    candyFillings{candyIndex} = fillingNames{fillingInts(candyIndex)};
    colorCounts(colorInts(candyIndex)) = colorCounts(colorInts(candyIndex)) + 1;
    fillingCounts(fillingInts(candyIndex)) = fillingCounts(fillingInts(candyIndex)) + 1;
    if colorInts(candyIndex) == 5 && fillingInts(candyIndex) == 1
        greenMilkComboCount = greenMilkComboCount + 1;
    end
end
% colors = vertcat(colorInts, fillingInts);
% fprintf("%s: %d; %s: %d; %s: %d; %s: %d; %s: %d; %s: %d; %s: %d\n",...
%    colorNames{1}, colorCounts(1),...
%    colorNames{2}, colorCounts(2),...
%    colorNames{3}, colorCounts(3),...
%    colorNames{4}, colorCounts(4),...
%    colorNames{5}, colorCounts(5),...
%    colorNames{6}, colorCounts(6),...
%    "Total", sum(colorCounts));
% fprintf("%s: %d; %s: %d; %s: %d; %s: %d; %s: %d; %s: %d; %s: %d\n",...
%    fillingNames{1}, fillingCounts(1),...
%    fillingNames{2}, fillingCounts(2),...
%    fillingNames{3}, fillingCounts(3),...
%    fillingNames{4}, fillingCounts(4),...
%    fillingNames{5}, fillingCounts(5),...
%    "Total", sum(fillingCounts));
fprintf("There are %d M&Ms with Peanut Butter filling.\n", fillingCounts(3));
fprintf("There are %d M&Ms with Green shells and Milk Chocolate filling.",...
    greenMilkComboCount);

%% Response
% I can make sure my results make sense by manually counting the number
% of peanut butter M&Ms and M&Ms with green shells and milk chocolate
% filling. This second manual count is made easier by the 2x100 matrix on
% line 35 that combines the color and filling integer arrays. Finding where
% the first value is 5 and the second value is 1 is much easier with both
% values stacked vertically in the variables view.
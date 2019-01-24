%% concessionStand.m
%  Use vector-matrix multiplication to tabulate and display the cost of each
%  of the following orders. Assume a hot dog costs $3, a brat costs $3.5,
%  and a coke costs $2.5.

%  Author: Andrew Bartolini
%  Date: January 21, 2019

% Clear memory
clear
% Clear Command Window
clc

%% Set parameters
% Create array, A, that has the information about the orders in it. Each
% row is a unique order of hot dogs, brats, and cokes.

A = [2, 1, 3;...
    1, 0, 2;...
    2, 2, 2;...
    0, 5, 1];

% Create array, ItemCost, that has the cost of each item (hot dogs; brats;
% cokes). 

ItemCost = [3;...
    3.5;...
    2.5];

%% Complete calculation
% Calculate the cost of each order using matrix math. 

orderCost = A * ItemCost

%% Display order results
% Display the order results using the disp command

out = [" ";...
    " ";...
    " ";...
    " "];

for n = 1|4
    out(n) = "The total cost of order #" + num2str(n) + " is: $" + num2str(orderCost(n)) + char(10);
    disp(out(n))
end;
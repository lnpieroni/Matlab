%% fibonacci.m
% Calculate Fibonacci sequence through N integers
% Author: Len Pieroni
% No assistance

clear;
clc;

%% Get input
fibCount = input("How many Fibonacci numbers do you want? ");

%% Calculate Fibonacci sequence and sum
fib(1) = 0;
fib(2) = 1;
fibSum = 1;
for index = 3:fibCount
    fib(index) = fib(index-1) + fib(index-2);
    fibSum = fibSum + fib(index);
end
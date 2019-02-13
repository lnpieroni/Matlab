%% FindPrimes.m
% Find prime numbers between 1 and N
% Author: Len Pieroni
% No assistance

clear;
clc;

%% Get input
max = input("Upper limit of prime search: ");

%% Find primes
for index = 2:max
    if isprime(index)
        disp("Found Prime: " + num2str(index));
    end
end
%% primeSearch.m
% Generates random integers until it generates a prime one
% Author: Len Pieroni
% No assistance

clear;
clc;
close all;

%% Variable creation

randNum = 4; % Not a prime number, also not included in count
randCount = 0;
avgRandCount = 0;

%% Loop until random prime number is generated
for loopCount = 1:1000
    while not(isprime(randNum))
        randNum = randi(100);
        randCount = randCount + 1;
    end
    avgRandCount = avgRandCount + randCount;
    randNum = 4; % Not a prime number, re-enters while loop
    randCount = 0;
end
avgRandCount = avgRandCount / 1000;
disp("The average number of values generated was " + num2str(avgRandCount));

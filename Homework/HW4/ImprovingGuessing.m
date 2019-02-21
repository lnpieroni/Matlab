%% ImprovingGuessing.m
% Repeats a guessing game until the user tells it to quit
% Author: Len Pieroni
% No assistance

clear;
clc;
close all;

%% Initialization

targetVal = 0;
userGuess = 25;
userGuessCount = 0;
userGuessAvg = 0;
iterationCount = 0;

%% Guessing loop

while not(userGuess == 0) & not(isstrprop(userGuess, 'alpha'))
    userGuess = 25;
    targetVal = randi(20)
    while not(userGuess == targetVal) & userGuess > 0
        userGuess = input('Enter your guess for a number between 1 and 20 (or enter 0 or q to quit): ', 's');
        if isstrprop(userGuess, 'digit')
            userGuess = str2double(userGuess);
            userGuessCount = userGuessCount + 1;
        else
            break;
        end
        if userGuess > 0
            if userGuess < targetVal
                disp("Too low! Guess again!");
            elseif userGuess > targetVal
                disp("Too high! Guess again!");
            else
                disp("Congratulations! Your guess of " + num2str(userGuess) + " was correct!");
                iterationCount = iterationCount + 1;
            end
        end
    end
end
userGuessAvg = userGuessCount / iterationCount;
disp("The average number of guesses is: " + num2str(userGuessAvg));
%% guessing.m
% Plays a guessing game
% Author: Len Pieroni
% No assistance

clear;
clc;

%% Random number generation
target = randi(20); % Generate the target that the user wants to guess

%% Play guessing game
bCorrectGuess = false; % logical variable indicating a correct guess
userGuess = 0; % Stores user's guess

while not(bCorrectGuess)
    userGuess = input("Guess a number between 1 and 20: ");
    if userGuess < target
        disp("Too low! Guess again!");
    elseif userGuess > target
        disp("Too high! Guess again!");
    else
        bCorrectGuess = true;
        disp("Good guess! That's correct!");
    end
end
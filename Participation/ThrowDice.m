%% ThrowDice.m
% Simulates rolling a pair of fair six-sided dice
% Author: Len Pieroni
% No help

%% GENERATE ROLLS

roll1 = randi(6); % ROLL FIRST DIE
roll2 = randi(6); % ROLL SECOND DIE
sum = roll1 + roll2; % SUM ROLLS

%% OUTPUT

out = strcat("You rolled a ", num2str(roll1), " and a ", num2str(roll2), " for a total of ", num2str(sum));
disp(out);
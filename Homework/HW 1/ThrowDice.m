%% ThrowDice.m
% Simulates rolling a pair of standard dice
% Author: Len Pieroni
% No assistance

%% Calculate
roll1 = randi(6);
roll2 = randi(6);
sum = roll1 + roll2;

%% Output
out = "You rolled a "...
    + num2str(roll1) + " and a "...
    + num2str(roll2) + " for a total of "...
    + num2str(sum) + ".";
disp(out);


%% playdice.m
% Does things according to HW 7.8
% Author: Len Pieroni
% No assistance

%% Initialization 
N = 10; % Number of throws
printresults = false;
rng('shuffle');

for rollCount = 1:N
    [die1, die2, rollResult] = rolldice();
    fprintf(1, "Player rolls a %d and a %d : %s%c", die1, die2, rollResult, char(10));
end
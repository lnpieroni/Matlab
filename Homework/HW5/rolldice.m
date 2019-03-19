function [die1, die2, resultstr] = rolldice()
% rolldice
% Simulates dice roll
% No Inputs
% Outputs
% die1 - 1x1 integer in range [1, 6]
% die2 - 1x1 integer in range [1, 6]
% resultstr - string with result of dice roll

die1 = randi(6);
die2 = randi(6);
sumd = die1 + die2;

if die1 == 2 && die2 == 2
    resultstr = 'hard four';
elseif die1 == 3 && die2 == 3
    resultstr = 'hard 6';
else
    switch sumd
        case 2
            resultstr = 'snake eyes';
        case 3
            resultstr = 'ace-deuce';
        case 7
            resultstr = 'natural';
        case 11
            resultstr = 'yo';
        case 12
            resultstr = 'boxcars';
        otherwise
            resultstr = '';
    end
end
end


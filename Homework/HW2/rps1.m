%% rps1.m
% Play a round of rock-paper-scissors
% Author: Len Pieroni
% No assistance

%% Input
playerChoice = input("Rock (r), Paper (p), or Scissors (s)? ", 's');

%% Computer Choice
cpuOptions = ['r', 'p', 's'];
cpuChoiceVal = ceil(rand()*3)
cpuChoice = cpuOptions(cpuChoiceVal);

%% Winner Selection (Decision Tree)
switch playerChoice
    case 'r' % If player chooses rock
        if(cpuChoice == 'r') % If CPU chooses rock
            winnerVal = 0; % Nobody wins
        elseif(cpuChoice == 's') % If CPU chooses scissors
            winnerVal = 1; % Player wins
        else % If CPU chooses paper
            winnerVal = 2; % CPU wins
        end
    case 'p' % If player chooses paper
        if(cpuChoice == 'p') % If CPU chooses paper
            winnerVal = 0; % Nobody wins
        elseif(cpuChoice == 'r') % If CPU chooses rock
            winnerVal = 1; % Player wins
        else % If CPU chooses scissors
            winnerVal = 2; % CPU wins
        end
    case 's' % If player chooses scissors
        if(cpuChoice == 's') % If CPU chooses scissors
            winnerVal = 0; % Nobody wins
        elseif(cpuChoice == 'p') % If CPU chooses paper
            winnerVal = 1; % Player wins
        else % If CPU chooses rock
            winnerVal = 2; % CPU wins
        end
end

%% Display winner
winOut = ["It's a draw!", "Player wins!", "CPU wins!"];
disp(winOut(winnerVal+1));
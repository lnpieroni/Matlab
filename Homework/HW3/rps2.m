%% rps2.m
% Play rock-paper-scissors
% Author: Len Pieroni
% No assistance

clear;
clc;

%% Input
playerChoice = input("Rock (r), Paper (p), Scissors (s), or Quit (q)? ", 's');

%% Loop until q is entered
while not(strcmp(playerChoice, "q"))
    
    %% Computer Choice
    cpuOptions = ['r', 'p', 's'];
    cpuChoiceVal = ceil(rand()*3);
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
    playerChoice = input("Rock (r), Paper (p), Scissors (s), or Quit (q)? ", 's');
end
disp("Goodbye! Thanks for playing!");
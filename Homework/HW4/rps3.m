%% rps2.m
% Play rock-paper-scissors
% Author: Len Pieroni
% No assistance

clear;
clc;
close all;

%% Input and variable initialization
playerChoice = input("Rock (r), Paper (p), Scissors (s), or Quit (q)? ", 's');
playerRecord = [0, 0, 0]; % Ties, wins, losses

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
                winnerVal = 3; % Nobody wins
            elseif(cpuChoice == 's') % If CPU chooses scissors
                winnerVal = 1; % Player wins
            else % If CPU chooses paper
                winnerVal = 2; % CPU wins
            end
        case 'p' % If player chooses paper
            if(cpuChoice == 'p') % If CPU chooses paper
                winnerVal = 3; % Nobody wins
            elseif(cpuChoice == 'r') % If CPU chooses rock
                winnerVal = 1; % Player wins
            else % If CPU chooses scissors
                winnerVal = 2; % CPU wins
            end
        case 's' % If player chooses scissors
            if(cpuChoice == 's') % If CPU chooses scissors
                winnerVal = 3; % Nobody wins
            elseif(cpuChoice == 'p') % If CPU chooses paper
                winnerVal = 1; % Player wins
            else % If CPU chooses rock
                winnerVal = 2; % CPU wins
            end
    end
    
    %% Display winner
    winOut = ["Player wins!", "CPU wins!", "It's a draw!"];
    playerRecord(winnerVal) = playerRecord(winnerVal) + 1;
    disp(winOut(winnerVal));
    disp("The player's current record is "...
        + num2str(playerRecord(1)) + " wins, "...
        + num2str(playerRecord(2)) + " losses, and "...
        + num2str(playerRecord(3)) + " ties.");
    playerChoice = input("Rock (r), Paper (p), Scissors (s), or Quit (q)? ", 's');
end
disp("Goodbye! Thanks for playing!");
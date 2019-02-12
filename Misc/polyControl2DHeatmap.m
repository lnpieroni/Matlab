%% polyControlHeatmap.m
% Generate heatmap of control system

clear;
clc;

%% Variable Creation

forwardVals = [255:-1:0]; % Used for y axis labels
turnVals = [0:255]; % Used for x axis labels

% Replicates behavior of joysticks
[lStickVals, rStickVals] = meshgrid([255:-1:0], [0:255]);
% [lInputs, rInputs] = meshgrid(linspace(1, -1, 256), linspace(-1, 1, 256));

% Scales joystick values to [-1, 1]
lInputs = lStickVals/127.5 - 1;
rInputs = rStickVals/127.5 - 1;

% Displays lInputs and rInputs values to confirm domain shift accuracy
disp("1:   forwardVals: " + num2str(forwardVals(1))+ newline...
    + "lStickVals: " + num2str(lStickVals(1)) + newline...
    + "lInputs: " + num2str(lInputs(1)) + newline...
    + "turnVals: " + num2str(turnVals(1)) + newline...
    + "rStickVals: " + num2str(rStickVals(1)) + newline);
disp("64:   forwardVals: " + num2str(forwardVals(64))+ newline...
    + "lStickVals: " + num2str(lStickVals(64)) + newline...
    + "lInputs: " + num2str(lInputs(64)) + newline...
    + "turnVals: " + num2str(turnVals(64)) + newline...
    + "rStickVals: " + num2str(rStickVals(64)) + newline);
disp("128:   forwardVals: " + num2str(forwardVals(128))+ newline...
    + "lStickVals: " + num2str(lStickVals(128)) + newline...
    + "lInputs: " + num2str(lInputs(128)) + newline...
    + "turnVals: " + num2str(turnVals(128)) + newline...
    + "rStickVals: " + num2str(rStickVals(128)) + newline);
disp("172:   forwardVals: " + num2str(forwardVals(172))+ newline...
    + "lStickVals: " + num2str(lStickVals(172)) + newline...
    + "lInputs: " + num2str(lInputs(172)) + newline...
    + "turnVals: " + num2str(turnVals(172)) + newline...
    + "rStickVals: " + num2str(rStickVals(172)) + newline);
disp("256:   forwardVals: " + num2str(forwardVals(256))+ newline...
    + "lStickVals: " + num2str(lStickVals(256)) + newline...
    + "lInputs: " + num2str(lInputs(256)) + newline...
    + "turnVals: " + num2str(turnVals(256)) + newline...
    + "rStickVals: " + num2str(rStickVals(256)) + newline);

% Assigns constant values
alpha = .25; % Forward/back sensitivity constant, to be chosen experimentally
beta = .25; % Turning sensitivity constant, to be chosen experimentally
gamma = .6; % Max weak side motor power with full turn & full forward

%% Calculations

% value = (input^3 + input*alpha)/(1+alpha)
lInsForward = (lInputs.^3 + lInputs.*(alpha))./(1+alpha);
rInsForward = (rInputs.^3 + rInputs.*(alpha))./(1+alpha);

% value = (input^3 + input*beta)/(1+beta)
lInsTurn = (lInputs.^3 + lInputs.*(beta))./(1+beta);
rInsTurn = (rInputs.^3 + rInputs.*(beta))./(1+beta);

% Calculates motor power
lMtrPwr = lInsForward + (rInsTurn).*(1-abs(lInsForward.*gamma));
rMtrPwr = lInsForward - (rInsTurn).*(1-abs(lInsForward.*gamma));

lMtrPwr = transpose(lMtrPwr);
rMtrPwr = transpose(rMtrPwr);

% Limits motor power to [-1, 1]
lMtrPwr = min(max(lMtrPwr, -1), 1);
rMtrPwr = min(max(rMtrPwr, -1), 1);

% Left motor spins the wrong direction I think
% lMtrPwr = -lMtrPwr;

%% Left side heatmap generation
lMapFig = figure(); % Create new figure
lMapFig.Name = "Left Motor"; % Add name to figure
lMap = heatmap(turnVals, forwardVals, lMtrPwr); % Create heatmap
lMap.Title = "Left Motor Power Levels"; % Add title to heatmap
lMap.ColorMethod = 'none'; % Uses lMtrPwr values to determine heatmap colors
lMap.GridVisible = 'off'; % Turns off grid to show colors of the heatmap
lMap.Colormap = jet; % Select pretty colormap scheme
xlabel("Right"); % Add x-axis label
ylabel("Forward"); % Add y-axis label
colorbar; % Turn on heatmap colorbar

%% Right side heatmap generation
rMapFig = figure(); % Create new figure
rMapFig.Name = "Right Motor"; % Add name to figure
rMap = heatmap(turnVals, forwardVals, rMtrPwr); % Create heatmap
rMap.Title = "Right Motor Power Levels"; % Add title to heatmap
rMap.ColorMethod = 'none'; % Uses rMtrPwr values to determine heatmap colors
rMap.GridVisible = 'off'; % Turns off grid to show colors of the heatmap
rMap.Colormap = jet; % Select pretty colormap scheme
xlabel("Right"); % Add x-axis label
ylabel("Forward"); % Add y-axis label
colorbar; % Turn on heatmap colorbar
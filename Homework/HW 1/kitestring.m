%% kitestring.m
% Calculates amount of string necessary to fly a kite given the parameters listed below
% Author: Len Pieroni

%% PARAMETERS

kiteHeight = 8.2;
theta = pi*(2/7);
holdHeight = 0.8;
stringWound = 0.25;

%% CALCULATIONS

% Calculate height above holder
deltaH = kiteHeight - holdHeight;

% Calculate length of string from holder to kite
stringLength = deltaH/(sin(pi));

% Add length of string wound around holder
stringLength = stringLength + stringWound;

%% OUTPUT

out = strcat("For a height of ", num2str(kiteHeight),...
	" m above the ground and an angle of ", num2str(theta),...
	" radians from the horizon, ", num2str(stringLength),...
	" m of string is necessary.");
disp(out);
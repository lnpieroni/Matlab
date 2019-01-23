%% TerminalVel.m
% Calculates terminal velocity of a falling object
% Author: Len Pieroni
% No assistance

%% INPUTS

mass = input('Input mass of object (kg)');
grav = 9.81; % Gravity constant of Earth is 9.81 m/s
rho = 1.18; % Density of air is 1.18 kg/m^3
area = input('Input area of object (m^2)');
dragCoeff = 0.3; % Drag coefficient assumed to be 0.3
msToMphConvert = 2.23694; % m/s to mph conversion factor

%% CALCULATION

% Calculate terminal velocity
vel = sqrt((2*mass*grav)/(rho*area*dragCoeff));

% Convert terminal velocity to mph
velMph = vel*msToMphConvert;

%% OUTPUTS

output1 = "The object's terminal velocity is: ";
output2 = [num2str(vel), ' m/s (', num2str(velMph), ' mph)'];
output = strcat(output1, output2);
disp(output);
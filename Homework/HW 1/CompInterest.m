%% CompInterest.m
% Calculate compound interest
% Author: Len Pieroni
% No assistance

%% Parameters
principal = 1;
interestRate = 1;
k = 10^9; % Times compounded per year
years = 1;

%% Calculation
value = principal*(1+interestRate/k)^(k*years);

%% Output
output = strcat('Value is: $', num2str(value));
disp(output);
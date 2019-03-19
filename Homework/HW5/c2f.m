function [tempF] = c2f(tempC)
% Converts Celcius to Fahrenheit
% INPUT
% tempC - 1x1 scalar, temperature in Celcius
% OUTPUT
% tempF - 1x1 scalar, temperature in Fahrenheit
tempF = (tempC*1.8) + 32;
end

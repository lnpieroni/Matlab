function [t, v, isDoubled] = myfunc(tF, Nt, vInit, r)
%% MYFUNC
% Author: Len Pieroni
% Section: 04
% Test Version: C
% 
% INPUTS
% tF (1x1) highest value in vector t
% Nt (1x1) number of values in vectors t and v
% vInit (1x1) starting value of recursive algorithm
% r (1x1) scaling factor of recursive sequence
%
% OUTPUTS
% t (1xNt) evenly spaced array from 0 to tF
% v (1xNt) output array of recursive algorithm
% isDoubled (logical 1x1) is last value double or more the value of vInit

%% Function Process
t = linspace(0, tF, Nt); % Evenly spaced array 1 through tF with size Nt
v = zeros(1, Nt); % Pre-allocate vector v with values of 0
v(1) = vInit;
for vLastIndex = 1:Nt-1 % Iterate through vector v
    v(vLastIndex+1) = v(vLastIndex) + v(vLastIndex)*r;
end
if v(Nt) >= 2*vInit % Is last value of v at least double the first value?
    isDoubled = true; % If yes, then isDoubled is true
else
    isDoubled = false; % Otherwise, it's false
end
end


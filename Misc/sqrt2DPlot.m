%% sqrt2DPlot.m
% Plots 5 graphs of simulated inputs
% Author: Len Pieroni

clear;
clc;

lStick = -127:127;
rStick = [-127; -63; 0; 63; 127];

inputs = lStick + rStick;

mtrPwr = sqrt(abs(inputs)) .* sign(inputs);

plotFormat = ["b-o", "r-x", "g-+", "c-d", "m-*"];

hold on;
for iPlotCt = 1:5
    plot(lStick, mtrPwr(iPlotCt, :), plotFormat(iPlotCt));
end
legend(num2str(rStick));
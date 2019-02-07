%% polyControlPlotting.m
% Plots 7 graphs of motor behavior at different turning values

clear;
clc;

lStick = linspace(-1, 1, 100);
rStick = [-1; -.75; -.5; 0; .5; .75; 1];

alpha = .25;
beta = 0.25;
gamma = 0.6;

lInsForward = (lStick.^3 + lStick.*(alpha))./(1+alpha);
rInsForward = (rStick.^3 + rStick.*(alpha))./(1+alpha);

lInsTurn = (lStick.^3 + lStick.*(beta))./(1+beta);
rInsTurn = (rStick.^3 + rStick.*(beta))./(1+beta);

lMtrPwr = lInsForward + (rInsTurn).*(1-abs(lInsForward.*gamma));
rMtrPwr = lInsForward - (rInsTurn).*(1-abs(lInsForward.*gamma));

lMtrPwr = min(max(lMtrPwr, -1), 1);
rMtrPwr = min(max(rMtrPwr, -1), 1);

plotFormat = ["b-", "r-", "g-", "c-", "m--", "r--", "k--"];

hold on;
title("Left Motor");
for iPlotCt = 1:7
    plot(lStick, lMtrPwr(iPlotCt, :), plotFormat(iPlotCt));
end
legend(num2str(rStick));
hold off;
figure;
hold on;
title("Right Motor");
for iPlotCount = 1:7
    plot(lStick, rMtrPwr(iPlotCount, :), plotFormat(iPlotCount));
end
legend(num2str(rStick));
hold off;
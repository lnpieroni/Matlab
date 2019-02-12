%% polyControlHeatmap.m
% Generate heatmap of control system

clear;
clc;

lStick = linspace(255, 0, 256);
rStick = linspace(0, 255, 256);

[lVals, rVals] = meshgrid(linspace(-1, 1, 256), linspace(1, -1, 256));

alpha = .25;
beta = .25;
gamma = .6;

lInsForward = (lVals.^3 + lVals.*(alpha))./(1+alpha);
rInsForward = (rVals.^3 + rVals.*(alpha))./(1+alpha);

lInsTurn = (lVals.^3 + lVals.*(beta))./(1+beta);
rInsTurn = (rVals.^3 + rVals.*(beta))./(1+beta);

lMtrPwr = lInsForward + (rInsTurn).*(1-abs(lInsForward.*gamma));
rMtrPwr = lInsForward - (rInsTurn).*(1-abs(lInsForward.*gamma));

lMtrPwr = min(max(lMtrPwr, -1), 1);
rMtrPwr = min(max(rMtrPwr, -1), 1);

rMtrPwr = -rMtrPwr;

lMapFig = figure();
lMapFig.Name = "Left Motor";
lMap = heatmap(rStick, lStick, lMtrPwr);
lMap.ColorMethod = 'none';
lMap.GridVisible = 'off';
lMap.Colormap = jet;
xlabel("Right");
ylabel("Forward");
colorbar;
rMapFig = figure();
rMapFig.Name = "Right Motor";
rMap = heatmap(rStick, lStick, rMtrPwr);
rMap.ColorMethod = 'none';
rMap.GridVisible = 'off';
rMap.Colormap = jet;
ylabel("Forward");
xlabel("Right");
colorbar;
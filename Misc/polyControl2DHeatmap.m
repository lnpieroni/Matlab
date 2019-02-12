%% polyControlHeatmap.m
% Generate heatmap of control system

clear;
clc;

lStick = -1:.001:1;
rStick = 1:-.001:-1;

[lVals, rVals] = meshgrid(-1:.001:1, -1:.001:1);

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

lMapFig = figure();
lMapFig.Name = "Left Motor";
lMap = heatmap(lStick, rStick, lMtrPwr);
lMap.ColorMethod = 'none';
lMap.GridVisible = 'off';
lMap.Colormap = jet;
xlabel("Left/Right");
ylabel("Forward/Back");
colorbar;
rMapFig = figure();
rMapFig.Name = "Right Motor";
rMap = heatmap(lStick, rStick, rMtrPwr);
rMap.ColorMethod = 'none';
rMap.GridVisible = 'off';
rMap.Colormap = jet;
xlabel("Forward/Back");
ylabel("Left/Right");
colorbar;
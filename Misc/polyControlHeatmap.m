%% polyControlHeatmap.m
% Generate heatmap of control system

clear;
clc;

[lStick, rStick] = meshgrid(-1:.001:1);

alpha = .25;
beta = .25;
gamma = .6;

lInsForward = (lStick.^3 + lStick.*(alpha))./(1+alpha);
rInsForward = (rStick.^3 + rStick.*(alpha))./(1+alpha);

lInsTurn = (lStick.^3 + lStick.*(beta))./(1+beta);
rInsTurn = (rStick.^3 + rStick.*(beta))./(1+beta);

lMtrPwr = lInsForward + (rInsTurn).*(1-abs(lInsForward.*gamma));
rMtrPwr = lInsForward - (rInsTurn).*(1-abs(lInsForward.*gamma));

lMtrPwr = min(max(lMtrPwr, -1), 1);
rMtrPwr = min(max(rMtrPwr, -1), 1);

lMapFig = figure();
lMapFig.Name = "Left Motor";
lMap = heatmap(lStick, rStick, lMtrPwr);
lMap.EdgeColor = 'none';
lMap.FaceAlpha = .75;
rMapFig = figure();
rMapFig.Name = "Right Motor";
rMap = heatmap(lStick, rStick, rMtrPwr);
rMap.EdgeColor = 'none';
rMap.FaceAlpha = .75;
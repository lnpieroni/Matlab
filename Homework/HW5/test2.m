%% test2.m
% Tests c2f function
% Author: Len Pieroni
% No assistance

%% Variable initialization
tempsC = linspace(0, 8, 5);
tempsF = zeros(1, 5);

%% Temperature Conversion
for index = 1:5
    tempsF(index) = c2f(tempsC(index));
end

outTable(1) = sprintf("T(C) \t T(F)");
disp(outTable(1));
for formatIndex = 1:5
    outTable(formatIndex+1) = sprintf("%f   \t %f", tempsC(formatIndex), tempsF(formatIndex));
    disp(outTable(formatIndex));
end
disp(outTable(6));
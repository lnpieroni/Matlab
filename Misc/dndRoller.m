%% DnD Character Roller

clear;
clc;

exit = 0;
while exit == 0
    dice = randi([1, 6], 6, 4);
    sums = zeros(1, 6);
    lows = zeros(1, 6);
    for statIter = 1:6
        lows(statIter) = lows(statIter) + 12;
        for dieIter = 1:4
            sums(statIter) = sums(statIter) + dice(statIter, dieIter);
            if dice(statIter, dieIter) < lows(statIter)
                lows(statIter) = dice(statIter, dieIter);
            end
        end
        sums(statIter) = sums(statIter) - lows(statIter);
    end
    disp(sums);
    exit = input('0 to continue, anything else to exit. ');
end
%% DnD Character Roller

clear;
clc;

[fileName, filePath] = uigetfile({'*.txt'; '*.*'});
fileStr = fullfile(filePath, fileName);
fileId = fopen(fileStr, 'w');

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
    ordered = false;
    while ordered == false
        ordered = true;
        for sortIndex = 1:5
            if sums(sortIndex) < sums(sortIndex+1)
                sums(sortIndex) = sums(sortIndex) + sums(sortIndex+1);
                sums(sortIndex+1) = sums(sortIndex) - sums(sortIndex+1);
                sums(sortIndex) = sums(sortIndex) - sums(sortIndex+1);
                ordered = false;
            end
        end
    end
    str = sprintf("%d\t%d\t%d\t%d\t%d\t%d", sums(1), sums(2), sums(3), sums(4), sums(5), sums(6));
    disp(str);
    fprintf(fileId, "%d\t%d\t%d\t%d\t%d\t%d\n", sums(1), sums(2), sums(3), sums(4), sums(5), sums(6));
    exit = input('Enter 0 to continue, anything else to exit. ');
end
fclose(fileId);
type(fileStr);
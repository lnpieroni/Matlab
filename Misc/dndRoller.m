%% DnD Character Roller

clear;
clc;

[fileName, filePath] = uigetfile({'*.txt'; '*.*'});
fileStr = fullfile(filePath, fileName);
fileId = fopen(fileStr, 'w');

exit = 0;

repeatedCount = 6;

while exit == 0
    sums = zeros(repeatedCount, 6);
    for repeat = 1:repeatedCount
        dice = randi([1, 6], 6, 4);
        lows = zeros(1, 6);
        for statIter = 1:6
            lows(statIter) = lows(statIter) + 12;
            for dieIter = 1:4
                sums(repeat, statIter) = sums(repeat, statIter) + dice(statIter, dieIter);
                if dice(statIter, dieIter) < lows(statIter)
                    lows(statIter) = dice(statIter, dieIter);
                end
            end
            sums(repeat, statIter) = sums(repeat, statIter) - lows(statIter);
        end
        ordered = false;
        while ordered == false
            ordered = true;
            for sortIndex = 1:5
                if sums(repeat, sortIndex) < sums(repeat, sortIndex+1)
                    sums(repeat, sortIndex) = sums(repeat, sortIndex) + sums(repeat, sortIndex+1);
                    sums(repeat, sortIndex+1) = sums(repeat, sortIndex) - sums(repeat, sortIndex+1);
                    sums(repeat, sortIndex) = sums(repeat, sortIndex) - sums(repeat, sortIndex+1);
                    ordered = false;
                end
            end
        end
        lowSorted = false;
        while lowSorted == false
            lowSorted = true;
            for lowSortIndex = 1:repeatedCount-1
                if sums(lowSortIndex, 6) < sums(lowSortIndex+1, 6)
                    sums(lowSortIndex, :) = sums(lowSortIndex, :) + sums(lowSortIndex+1, :);
                    sums(lowSortIndex+1, :) = sums(lowSortIndex, :) - sums(lowSortIndex+1, :);
                    sums(lowSortIndex, :) = sums(lowSortIndex, :) - sums(lowSortIndex+1, :);
                    ordered = false;
                end
            end
        end
        str = sprintf("%d\t%d\t%d\t%d\t%d\t%d",...
            sums(repeat, 1), sums(repeat, 2), sums(repeat, 3),...
            sums(repeat, 4), sums(repeat, 5), sums(repeat, 6));
        disp(str);
        fprintf(fileId, "%d\t%d\t%d\t%d\t%d\t%d\n",...
            sums(repeat, 1), sums(repeat, 2), sums(repeat, 3),...
            sums(repeat, 4), sums(repeat, 5), sums(repeat, 6));
    end
    exit = input('Enter 0 to continue, anything else to exit. ');
end
fclose(fileId);
type(fileStr);
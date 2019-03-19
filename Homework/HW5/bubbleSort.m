function [vout] = bubbleSort(v)
% bubbleSort
% Sorts vector from smallest to largest using bubble sort algorithm

bIsSorted = false;
while(~bIsSorted)
    bIsSorted = true;
    for index  = 1:length(v)-1
        if v(index) > v(index+1)
            swap = v(index);
            v(index) = v(index+1);
            v(index+1) = swap;
            bIsSorted = false;
        end
    end
end
vout = v;
end
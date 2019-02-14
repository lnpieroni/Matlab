%% changeArray.m

%% Establish nMin & row, column counts, plus minimum number counter
nMin = 20;
nRows = 8;
nCols = 5;
nMinCt = 0;

%% Load array and output original values
array = load("ArrayVals.txt");
disp(array);

%% Process array
for iRow = 1:nRows
    for iCol = 1:nCols
        if array(iRow, iCol) < nMin
            array(iRow, iCol) = array(iRow, iCol) * 2;
            nMinCt = nMinCt + 1;
        end
    end
end
disp("Array after execution: ");
disp(array);
disp("Number of small numbers: " + nMinCt);
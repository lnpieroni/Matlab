function ct = CountemF(start, count)
% displays (count) number of integers starting with "start"
% 
% INPUTS
% start - 1x1 scalar, starting value of count
% count - 1x1 scalar, number of integers to count, including start
% OUTPUTS
% ct - 1xcount matrix of integers counted

ct(1) = start;
for index = 2:count
    ct(index) = ct(1) + (index-1);
end
end
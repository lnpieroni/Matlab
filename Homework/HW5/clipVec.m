function [vout] = clipVec(v, vmin, vmax)
% clipVec
% Takes a vector v and clips it to [vmin, vmax]

if v < vmin
    vout = vmin;
elseif v > vmax
    vout = vmax;
else
    vout = v;

end


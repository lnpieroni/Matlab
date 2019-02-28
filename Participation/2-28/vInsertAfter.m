function vout = vInsertAfter(v, x, k)
% Inserts value into vector immediately after index
% INPUTS
% v = input vector (1xN)
% x = value to be inserted (1x1)
% k = index to be inserted after

    vout = v;
    for i = length(v):-1:k+1
        vout(i+1) = v(i);
    end
    vout(k+1) = x;
end
function meters = ft2m(feet)
% Converts input value (measured in feet) to meters
% INPUTS
% feet - the value(s) to be converted from feet to meters(1 x N)
% OUTPUTS
% meters - the value(s) after conversion (1 x N) (same size as feet)

    meters = feet * .3048;
end
function facResult = myFactorial(N)
% Calculates the factorial of a scalar N
% INPUTS
% N = 1x1 scalar
% OUTPUTS
% facResult = 1x1 scalar, factorial of N

    val = N; % val = iterated value starting at N and ending at 1
    facVal = 1; % facVal = value of factorial during while loop
    while val > 1
        facVal = facVal * val;
        val = val - 1;
    end
    facResult = facVal;
end
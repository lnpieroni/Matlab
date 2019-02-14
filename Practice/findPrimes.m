clear;
clc;

n = 5;
m = 12;
max = 150;
myArray = randi(max, [n, m]);
primeCt = 0;
primesPerRow = zeros(1, m);

for row = 1:n
    for col = 1:m
        disp("myArray(" + num2str(row) + ", " + num2str(col) + ") is " + myArray(row, col));
        if isprime(myArray(row, col))
            primeCt = primeCt + 1;
        end
    primesPerRow(row) = primeCt;
    primeCt = 0;
    end
end
for nRowCt = 1:n
    disp("Row #" + num2str(nRowCt) + " contains " + primesPerRow(nRowCt));
end
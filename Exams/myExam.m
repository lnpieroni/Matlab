%% myExam.m
% Author: Len Pieroni
% Section: 04
% Test Version: C

%% Window Prep
clear; % Clear memory
clc; % Clear command window
close all; % Close all figures

%% Section 2: Calling and Animating myfunc
tF = 12;
Nt = 120;
vInit = 3;
r = 0.02;
[t, v, isDoubled] = myfunc(tF, Nt, vInit, r); % Call myfunc
if isDoubled
    disp("The value of v is doubled!");
else
    disp("The value of v is not doubled.");
end
for pointNum = 1:Nt
    plot(t(pointNum), v(pointNum), "ro",...
        t(1:pointNum), v(1:pointNum), "k-",...
        t(pointNum:Nt), v(pointNum:Nt), "b-");
    drawnow;
end

%% Section 3: Analyzing the Temperature Data
temp = load("TempDataC.txt");
maxTemp = temp(1, 1);
maxTempDate = [1, 1];
minTemp = temp(1, 1);
minTempDate = [1, 1];
for year = 1:4
    for month = 1:12
        if temp(year, month) > 70
            fprintf("The average temperature for month %d in year %d is %.1f degrees Fahrenheit.\n",...
                month, year, temp(year, month));
        end
        if temp(year, month) > maxTemp
            maxTemp = temp(year, month);
            maxTempDate = [year, month];
        elseif temp(year, month) < minTemp
            minTemp = temp(year, month);
            minTempDate = [year, month];
        end
    end
end
fprintf("The maximum average temperature was %.1f degrees Fahrenheit, which occurred in month %d of year %d.\n",...
    maxTemp, maxTempDate(2), maxTempDate(1));
monthInput = input('Enter month number: ');
while monthInput < 1 || monthInput > 12
    monthInput = input('Invalid month. Enter month number: ');
end
yearInput = input('Enter year number: ');
fprintf("The average temperature in year %d and month %d was %.1f degrees Fahrenheit.\n",...
    yearInput, monthInput, temp(yearInput, monthInput));
%% Section 4: Plotting the Temperature Data
figure;
hold on;
plot(1:12, temp(1, :), "ro");
plot(1:12, temp(2, :), "bs");
plot(1:12, temp(3, :), "k*");
plot(1:12, temp(4, :), "g.");
legend("Year 1", "Year 2", "Year 3", "Year 4");
xlabel('Month Number');
ylabel('Average Temperature (in Fahrenheit)');
hold off;

%% Section 5: Die Rolling
resultCount = zeros(1, 6);
while resultCount(1) < 14 && resultCount(2) < 14 && resultCount(3) < 14 ...
    && resultCount(4) < 14 && resultCount(5) < 14 && resultCount(6) < 14
    roll = randi(6);
    resultCount(roll) = resultCount(roll) + 1;
end
for resultIndex = 1:6
    fprintf("The number %d was rolled %d times.\n",...
        resultIndex, resultCount(resultIndex));
end
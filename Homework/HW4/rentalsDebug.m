%% rentals.m
%  This program is used to take car rental information from three different
%  locations and determine the number of rental days and the total revenue
%  at each location and overall between the three locations.

%  Andrew Bartolini
%  January 18, 2019

%  Clear memory
clear
%  Clear Command Window 
clc

%% Set parameters
% Set a 1x4 vector with the daily rental fees using the following order: 
%   [compacts, full-sized, vans, SUV's]
rentalCosts = [25, 38, 53, 72]; % $

% Set three 1x4 vectors with the number of days each type of care is rented
% for the three different locations. Maintain the same order as the 1x4
% vector of rental costs: 
%   [compacts, full-sized, vans, SUV's]
airportData = [250, 150, 180, 86];
campusData = [160, 44, 60, 20];
elkhartData = [210, 112, 120, 78];

%% Calculations
% Part a)
% Determine the total number of rental days for July at each location by
% using the sum function to add the four values corresponding to the four
% different types of cars at each location. 
airportDays = sum(airportData); 
campusDays = sum(campusData);
elkhartDays = sum(elkhartData); 

% Part b) 
% Determine the total number of rental days for July for the company by
% adding the total days from the three locations. 
totalDays = airportDays+campusDays+elkhartDays; 

% Part c) 
% Determine the total revenue received at each location in July by
% multiplying the daily rental fee for each type of car by the number of
% rental days corresponding to that type of car and then summing the total
% revenue for all four types of car. This can be done efficiently in MATLAB
% using element-by-element multiplication (i.e., using .*). This requires
% that the types of cars are listed in the same order for both the
% rentalCosts vector and the data from each location. Finally, sum the
% revenue from the four types of cars to determine the revenue at each
% location.
airportRevenue = sum(rentalCosts.*airportData); % $
campusRevenue = sum(rentalCosts.*campusData); % $
elkhartRevenue = sum(rentalCosts.*elkhartData); % $

% Part d) 
% Determine the total revenue received at the company in July by first
% adding together the vectors of rental days for each type of car for the
% three locations to determine the total number of rental days per car for
% the company. Then use element-by-element multiplication to determine the
% revenue per type of car and then finally sum the revenue for the four
% types of cars.
totalRevenue = sum(rentalCosts.*(airportData+campusData+elkhartData)); % $

%% Display results
% Display the results of the calculations for each part. For notes on how
% to use the disp function, see the ThrowDice.m script. 
disp('Part a)')
disp(['Total Number of Rental Days for July for Airport: ', ...
    num2str(airportDays)]);
disp(['Total Number of Rental Days for July for Campus: ', ...
    num2str(campusDays)]);
disp(['Total Number of Rental Days for July for Elkhart: ', ...
    num2str(elkhartDays)]);
disp(' ')
disp('Part b)')
disp(['Total Number of Rental Days for July for Company: ', ...
    num2str(totalDays)]);
disp(' ')
disp('Part c)')
disp(['Total Revenue for July for Airport: $', num2str(airportRevenue)]);
disp(['Total Revenue for July for Campus: $', num2str(campusRevenue)]);
disp(['Total Revenue for July for Elkart: $', num2str(elkhartRevenue)]);
disp(' ')
disp('Part d)')
disp(['Total Revenue for July for Company: $', num2str(totalRevenue)]);
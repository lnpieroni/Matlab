%% Olympics.m
% Reads data from Olympics.txt and plots it as 3 series of points

%% Inputs
medalCount = load('Olympics.txt');

gold = medalCount(:, 1);
silver = medalCount(:, 2);
bronze = medalCount(:, 3);

%% Plotting
figure;
hold on;
plot([1:20], gold, 'LineStyle', 'none', 'Marker', '*', 'Color', [195/255, 130/255, 2/255]);
plot([1:20], silver, 'LineStyle', 'none', 'Marker', 's', 'Color', [165/255, 165/255, 165/255]);
plot([1:20], bronze, 'LineStyle', 'none', 'Marker', '.', 'Color', [102/255, 33/255, 12/255]);
xlabel('Country Number');
ylabel('Number of Medals');
legend('Gold', 'Silver', 'Bronze');
hold off;
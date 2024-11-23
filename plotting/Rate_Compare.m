% Load the CSV data
filenameC10 = 'C:\Users\Connor\Documents\GitHub\Dataset-battery-Samsung-30Q-electro-thermal-deformation-characterization\data\S001\Q30_S001_C10.csv'; % Replace with your actual file name
dataC10 = readmatrix(filenameC10);
filename1C = 'C:\Users\Connor\Documents\GitHub\Dataset-battery-Samsung-30Q-electro-thermal-deformation-characterization\data\S001\Q30_S001_1C.csv'; % Replace with your actual file name
data1C = readmatrix(filename1C);
filename2C = 'C:\Users\Connor\Documents\GitHub\Dataset-battery-Samsung-30Q-electro-thermal-deformation-characterization\data\S001\Q30_S001_2C.csv'; % Replace with your actual file name
data2C = readmatrix(filename2C);
filename3C = 'C:\Users\Connor\Documents\GitHub\Dataset-battery-Samsung-30Q-electro-thermal-deformation-characterization\data\S001\Q30_S001_3C.csv'; % Replace with your actual file name
data3C = readmatrix(filename3C);
filename4C = 'C:\Users\Connor\Documents\GitHub\Dataset-battery-Samsung-30Q-electro-thermal-deformation-characterization\data\S001\Q30_S001_4C.csv'; % Replace with your actual file name
data4C = readmatrix(filename4C);

% Extract relevant columns
timeC10 = dataC10(:, 1);        % First column: Time (seconds)
voltageC10 = dataC10(:, 3); % Fifth column: voltage
time1C = data1C(:, 1);        % First column: Time (seconds)
voltage1C = data1C(:, 3); % Fifth column: voltage
time2C = data2C(:, 1);        % First column: Time (seconds)
voltage2C = data2C(:, 3); % Fifth column: voltage
time3C = data3C(:, 1);        % First column: Time (seconds)
voltage3C = data3C(:, 3); % Fifth column: voltage
time4C = data4C(:, 1);        % First column: Time (seconds)
voltage4C = data4C(:, 3); % Fifth column: voltage

% Create the plot
figure()
plot(10*timeC10/3600, voltageC10, 'k', 'LineStyle', '-', 'LineWidth', 1.5);
hold on
plot(10*time1C*10/3600, voltage1C, 'b', 'LineStyle', '-', 'LineWidth', 1.5);
%hold on
plot(10*time2C*20/3600, voltage2C, 'g', 'LineStyle', '-', 'LineWidth', 1.5);
plot(10*time3C*30/3600, voltage3C, 'r', 'LineStyle', '-', 'LineWidth', 1.5);
plot(10*time4C*40/3600, voltage4C, 'm', 'LineStyle', '-', 'Marker', 'none', 'LineWidth', 1.5);
ylabel('voltage (V)');
xlabel('Depth of Discharge (%)');
title('Rate Comparison');

% Enhance the plot
grid off;
legend('C/10','1C','2C','3C','4C','location','southwest')
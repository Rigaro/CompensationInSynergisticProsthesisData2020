clear all
close all
%% Get data from csv 
% Task Results
filename = 'TaskResult.csv';
delimiterIn = ',';
headerlinesIn = 1;
taskData = importdata(filename,delimiterIn,headerlinesIn);
taskData.iteration = taskData.data(1:end,1);
taskData.synergyInterface =  taskData.data(1:end,2);
taskData.accuracy = taskData.data(1:end,3);
taskData.time = taskData.data(1:end,4);
taskData.performance = taskData.data(1:end,5);
taskData.xTrunk = taskData.data(1:end,6);
taskData.yTrunk = taskData.data(1:end,7);
taskData.zTrunk = taskData.data(1:end,8);
taskData.xShoulder = taskData.data(1:end,9);
taskData.yShoulder = taskData.data(1:end,10);
taskData.zShoulder = taskData.data(1:end,11);

% Subject Information
filename = 'SubjectInformation.csv';
delimiterIn = ',';
headerlinesIn = 1;
subjectInfo = importdata(filename,delimiterIn,headerlinesIn);

allDataFiles = dir(fullfile('*.csv'));
iterationNum = length(allDataFiles) - 3;

for i=1 : iterationNum
    filename = [num2str(i) , '.csv'];
    delimiterIn = ',';
    headerlinesIn = 1;
    motionData{i,1} = importdata(filename,delimiterIn,headerlinesIn);
end
%% Plot
subplot(2,1,1)
taskPlot(taskData.iteration+1,taskData.performance,'Personalization Algorithm Implementation Results - Subject 1','Iteration','Performance (J)');
xlim([0 80])
% ylim([0 200])
grid on
subplot(2,1,2)
plot(taskData.iteration+1,taskData.synergyInterface,'r')
title('Synergy')
xlabel('Iteration')
ylabel('Synergy (\theta)')
xlim([0 80])
ylim([0.5 2.5])
grid on
%% Compensation during iterations
figure();
taskPlot(taskData.iteration+1,taskData.xTrunk,'Personalization Algorithm Implementation Results - Subject 3 - Trunk','Iteration','Compensation (cm)');
grid on
xlim([0 80])
figure();
taskPlot(taskData.iteration+1,taskData.xShoulder,'Personalization Algorithm Implementation Results - Subject 3 - Shoulder','Iteration','Compensation (cm)');
grid on
xlim([0 80])
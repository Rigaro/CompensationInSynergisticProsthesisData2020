clear all
close all
%%
blueLine = [0/255,114/255,189/255];
blueMarker = [205/255,224/255,247/255];
redLine = [217/255,83/255,25/255];
redMarker = [239/255,221/255,221/255];
greyLine = [0.49 0.49 0.49];
%% Plot implementation result
load('s9.mat') %load data
% subplot(2,1,1)
figure(2);
hold off
yyaxis left
taskPlot(taskData.iteration+1,taskData.performance,'','Iteration','Performance (J_p)',blueLine,blueMarker);
xlim([0 80])
ylim([0 200])
ylabel('Performance (J_p)')
grid on
% subplot(2,1,2)
yyaxis right
plot(taskData.iteration+1,taskData.synergyInterface,'-','Color',redLine,'LineWidth',3.0)
title('Synergy')
xlabel('Iteration')
ylabel('Synergy (\theta)')
% Plot rest line
hold on
plot([40 40],[0 200], '--','Color',greyLine,'LineWidth',3.0)
% Set plot limits
xlim([0 80])
ylim([0.5 3.0])
title('')
grid on
legend('Performance','Synergy','Rest')
set(gca,'FontSize',30);
%% Compensation during iterations
% load('s9.mat') %load data
figure(3);
hold off
taskPlot(taskData.iteration+1,taskData.xTrunk,'','Iteration','Compensation (cm)',blueLine,blueMarker);
hold on
grid on
% figure();
taskPlot(taskData.iteration+1,taskData.xShoulder,'','Iteration','Compensation (cm)',redLine,redMarker);
% Plot rest line
hold on
plot([40 40],[-10 200], '--','Color',greyLine,'LineWidth',3.0)
% grid on
xlim([0 80])
ylim([-5 20])
xlabel('Iteration')
ylabel('Displacement (cm)')
legend('C7 Displacement','SA Displacement')
set(gca,'FontSize',30);
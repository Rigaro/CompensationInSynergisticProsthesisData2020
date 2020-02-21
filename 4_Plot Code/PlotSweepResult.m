clear all
close all
%% Trunk Forward
% S1
figure(1)
load("s1_rx_sweep.mat")
% subplot(2,2,1)
taskPlot(synergy,xCompensation,'Upper Body Forward Compensation - Subject 1','Synergy (\theta)','Compensation (cm)');
hold on
load("s1_rx_able.mat")
line([0.8 2.8],[xCompensationAv xCompensationAv],'Color','red','LineWidth',1)
xlim([0.8 2.8])
legend('Synergy Sweep','Able-body Mean')
grid on
% S2
load("s2_jm_sweep.mat")
figure(2)
% subplot(2,2,2)
taskPlot(synergy,xCompensation,'Upper Body Forward Compensation - Subject 2','Synergy (\theta)','Compensation (cm)');
hold on
load("s2_jm_able.mat")
line([0.8 2.8],[xCompensationAv xCompensationAv],'Color','red','LineWidth',1)
xlim([0.8 2.8])
grid on
% S3
load("s3_dd_sweep.mat")
% subplot(2,2,3)
figure(3)
taskPlot(synergy,xCompensation,'Upper Body Forward Compensation - Subject 3','Synergy (\theta)','Compensation (cm)');
hold on
load("s3_dd_able.mat")
line([0.8 2.8],[xCompensationAv xCompensationAv],'Color','red','LineWidth',1)
xlim([0.8 2.8])
grid on
%% Shoulder forward
figure(1)
% S1
load("s1_rx_sweep.mat")
% subplot(2,2,1)
taskPlot(synergy,xCompensationShoulder,'Shoulder Forward Compensation - Subject 1','Synergy (\theta)','Compensation (cm)');
hold on
load("s1_rx_able.mat")
line([0.8 2.8],[xCompensationShoulderAv xCompensationShoulderAv],'Color','yellow','LineWidth',1)
xlim([0.8 2.8])
legend('Synergy Sweep','Able-body Mean')
grid on
% S2
load("s2_jm_sweep.mat")
% subplot(2,2,2)
figure(2)
taskPlot(synergy,xCompensationShoulder,'Shoulder Forward Compensation - Subject 2','Synergy (\theta)','Compensation (cm)');
hold on
load("s2_jm_able.mat")
line([0.8 2.8],[xCompensationShoulderAv xCompensationShoulderAv],'Color','yellow','LineWidth',1)
xlim([0.8 2.8])
grid on
% S3
load("s3_dd_sweep.mat")
% subplot(2,2,3)
figure(3)
taskPlot(synergy,xCompensationShoulder,'Shoulder Forward Compensation - Subject 3','Synergy (\theta)','Compensation (cm)');
hold on
load("s3_dd_able.mat")
line([0.8 2.8],[xCompensationShoulderAv xCompensationShoulderAv],'Color','yellow','LineWidth',1)
xlim([0.8 2.8])
grid on
%%  Trunk Upward
% S1
figure()
load("s1_rx_sweep.mat")
% subplot(2,2,1)
taskPlot(synergy,-zCompensation,'Upper Body Upward Compensation - Subject 1','Synergy (\theta)','Compensation (cm)');
hold on
load("s1_rx_able.mat")
line([0.8 2.8],[-mean(zCompensation) -mean(zCompensation)],'Color','red','LineWidth',1)
xlim([0.8 2.8])
legend('Synergy Sweep','Able-body Mean')
grid on
% S2
load("s2_jm_sweep.mat")
figure()
% subplot(2,2,2)
taskPlot(synergy,-zCompensation,'Upper Body Upward Compensation - Subject 2','Synergy (\theta)','Compensation (cm)');
hold on
load("s2_jm_able.mat")
line([0.8 2.8],[-mean(zCompensation) -mean(zCompensation)],'Color','red','LineWidth',1)
xlim([0.8 2.8])
grid on
% S3
load("s3_dd_sweep.mat")
% subplot(2,2,3)
figure()
taskPlot(synergy,-zCompensation,'Upper Body Upward Compensation - Subject 3','Synergy (\theta)','Compensation (cm)');
hold on
load("s3_dd_able.mat")
line([0.8 2.8],[-mean(zCompensation) -mean(zCompensation)],'Color','red','LineWidth',1)
xlim([0.8 2.8])
grid on
%% Shoulder Upward
% S1
figure()
load("s1_rx_sweep.mat")
% subplot(2,2,1)
taskPlot(synergy,zCompensationShoulder,'Shoulder Upward Compensation - Subject 1','Synergy (\theta)','Compensation (cm)');
hold on
load("s1_rx_able.mat")
line([0.8 2.8],[mean(zCompensationShoulder) mean(zCompensationShoulder)],'Color','red','LineWidth',1)
xlim([0.8 2.8])
legend('Synergy Sweep','Able-body Mean')
grid on
% S2
load("s2_jm_sweep.mat")
figure()
% subplot(2,2,2)
taskPlot(synergy,zCompensationShoulder,'Shoulder Upward Compensation - Subject 2','Synergy (\theta)','Compensation (cm)');
hold on
load("s2_jm_able.mat")
line([0.8 2.8],[mean(zCompensationShoulder) mean(zCompensationShoulder)],'Color','red','LineWidth',1)
xlim([0.8 2.8])
grid on
% S3
load("s3_dd_sweep.mat")
% subplot(2,2,3)
figure()
taskPlot(synergy,zCompensationShoulder,'Shoulder Upward Compensation - Subject 3','Synergy (\theta)','Compensation (cm)');
hold on
load("s3_dd_able.mat")
line([0.8 2.8],[mean(zCompensationShoulder) mean(zCompensationShoulder)],'Color','red','LineWidth',1)
xlim([0.8 2.8])
grid on
%% S1
figure()
% S1
load("s1_rx_sweep.mat")
subplot(2,3,1)
taskPlot(synergy,xCompensation,'Trunk - Forward Compensation - S1','Synergy (\theta)','Compensation (cm)');
hold on
% p = polyfit(synergy, xCompensation, 1) 
% x1 = linspace(min(synergy), max(synergy), 100 );
% y1 = polyval(p, x1);
% plot(x1, y1, 'r','Linewidth',1.5);
load("s1_rx_able.mat")
line([0.8 2.8],[xCompensationAv xCompensationAv],'Color','red','LineWidth',1.5)
xlim([0.8 2.8])
ylim([-15 15])
legend('Synergy Sweep','Able-body Mean')
% S1
load("s1_rx_sweep.mat")
subplot(2,3,4)
taskPlot(synergy,xCompensationShoulder,'Shoulder - Forward Compensation - S1','Synergy (\theta)','Compensation (cm)');
hold on
% p = polyfit(synergy, xCompensationShoulder, 1) 
% x1 = linspace(min(synergy), max(synergy), 100 );
% y1 = polyval(p, x1);
% plot(x1, y1, 'k','Linewidth',1.5);
load("s1_rx_able.mat")
line([0.8 2.8],[xCompensationShoulderAv xCompensationShoulderAv],'Color','red','LineWidth',1.5)
xlim([0.8 2.8])
ylim([0 10])
legend('Synergy Sweep','Able-body Mean')
% S1
% load("s1_rx_sweep.mat")
% subplot(2,2,2)
% taskPlot(synergy,abs(xCompensation),'Forward Shoulder Compensation Motion - S1','Synergy (\theta)','Compensation (cm)');
% hold on
%% S2
% figure()
% Trunk
load("s2_jm_sweep.mat")
subplot(2,3,2)
taskPlot(synergy,xCompensation,'Trunk - Forward Compensation Motion - S2','Synergy (\theta)','Compensation (cm)');
hold on
% p = polyfit(synergy, xCompensation, 1) 
% x1 = linspace(min(synergy), max(synergy), 100 );
% y1 = polyval(p, x1);
% plot(x1, y1, 'r','Linewidth',1.5);
load("s2_jm_able.mat")
line([0.8 2.8],[xCompensationAv xCompensationAv],'Color','red','LineWidth',1.5)
xlim([0.8 2.8])
ylim([-15 15])
% Shoulder
load("s2_jm_sweep.mat")
subplot(2,3,5)
taskPlot(synergy,xCompensationShoulder,'Shoulder - Forward Compensation Motion - S2','Synergy (\theta)','Compensation (cm)');
hold on
% p = polyfit(synergy, xCompensationShoulder, 1) 
% x1 = linspace(min(synergy), max(synergy), 100 );
% y1 = polyval(p, x1);
% plot(x1, y1, 'k','Linewidth',1.5);
load("s2_jm_able.mat")
line([0.8 2.8],[xCompensationShoulderAv xCompensationShoulderAv],'Color','red','LineWidth',1.5)
xlim([0.8 2.8])
ylim([0 10])
%% S3
% figure()
% Trunk
load("s3_dd_sweep.mat")
subplot(2,3,3)
taskPlot(synergy,xCompensation,'Trunk - Forward Compensation Motion - S3','Synergy (\theta)','Compensation (cm)');
hold on
% p = polyfit(synergy, xCompensation, 1) 
% x1 = linspace(min(synergy), max(synergy), 100 );
% y1 = polyval(p, x1);
% plot(x1, y1, 'r','Linewidth',1.5);
load("s3_dd_able.mat")
line([0.8 2.8],[xCompensationAv xCompensationAv],'Color','red','LineWidth',1.5)
xlim([0.8 2.8])
ylim([-15 15])
% Shoulder
load("s3_dd_sweep.mat")
subplot(2,3,6)
taskPlot(synergy,xCompensationShoulder,'Shoulder - Forward Compensation Motion - S3','Synergy (\theta)','Compensation (cm)');
hold on
% p = polyfit(synergy(20:end-20), xCompensationShoulder(20:end-20), 1) 
% x1 = linspace(min(synergy), max(synergy), 100 );
% y1 = polyval(p, x1);
% plot(x1, y1, 'k','Linewidth',1.5);
load("s3_dd_able.mat")
line([0.8 2.8],[xCompensationShoulderAv xCompensationShoulderAv],'Color','red','LineWidth',1.5)
xlim([0.8 2.8])
ylim([0 10])
%% 
w1=0.5;
w2=1-w1;
figure()
subplot(2,2,1)
load("s1_rx_able.mat")
plot(1,abs(100*xCompensationAv/ARM_LENGTH),'bo')
hold on
load("s2_jm_able.mat")
plot(2,abs(100*xCompensationAv/ARM_LENGTH),'bo')
load("s3_dd_able.mat")
plot(3,abs(100*xCompensationAv/ARM_LENGTH),'bo')
xticks([1 2 3])
title("TrunkCompensation/ArmLength%")

subplot(2,2,2)
load("s1_rx_able.mat")
plot(1,abs(100*xCompensationShoulderAv/ARM_LENGTH),'bo')
hold on
load("s2_jm_able.mat")
plot(2,abs(100*xCompensationShoulderAv/ARM_LENGTH),'bo')
load("s3_dd_able.mat")
plot(3,abs(100*xCompensationShoulderAv/ARM_LENGTH),'bo')
xticks([1 2 3])
title("ShoulderCompensation/ArmLength%")

subplot(2,2,3)
load("s1_rx_able.mat")
plot(1,abs(100*(xCompensationAv.^2+xCompensationShoulderAv.^2)/ARM_LENGTH^2),'bo')
hold on
load("s2_jm_able.mat")
plot(2,abs(100*(xCompensationAv.^2+xCompensationShoulderAv.^2)/ARM_LENGTH^2),'bo')
load("s3_dd_able.mat")
plot(3,abs(100*(xCompensationAv.^2+xCompensationShoulderAv.^2)/ARM_LENGTH^2),'bo')
xticks([1 2 3])
title("Norm/ArmLength%")

%% Performance
% figure();

% S1
load("s1_rx_sweep.mat")
J = getCost(xCompensation,xCompensationShoulder,ARM_LENGTH);
% subplot(2,2,1)
figure(1)
taskPlot(synergy(1:max(find(synergy<=2.7))),J(1:max(find(synergy<=2.7))),'Performance1','Synergy (\theta)','Performance')
hold on
p = polyfit(synergy, J, 2) 
x1 = linspace(min(synergy), max(synergy), 100 );
y1 = polyval(p, x1);
plot(x1, y1, '-r');
xlim([0 3])

% S2
load("s2_jm_sweep.mat")
J = getCost(xCompensation,xCompensationShoulder,ARM_LENGTH);
% subplot(2,2,2)
figure(2)
taskPlot(synergy(1:max(find(synergy<=2.7))),J(1:max(find(synergy<=2.7))),'Performance1','Synergy (\theta)','Performance')
hold on
p = polyfit(synergy, J, 2) 
x1 = linspace(min(synergy), max(synergy), 100 );
y1 = polyval(p, x1);
plot(x1, y1, '-r');
xlim([0 3])

% S3
load("s3_dd_sweep.mat")
J = getCost(xCompensation,xCompensationShoulder,ARM_LENGTH);
% subplot(2,2,3)
figure(3)
taskPlot(synergy(1:max(find(synergy<=2.7))),J(1:max(find(synergy<=2.7))),'Performance1','Synergy (\theta)','Performance')
hold on
p = polyfit(synergy, J, 2) 
x1 = linspace(min(synergy), max(synergy), 100 );
y1 = polyval(p, x1);
plot(x1, y1, '-r');
xlim([0 3])
 
%% Deviation error bar
figure()
% S1
% subplot(2,2,1)
Jav=[];
errpos=[];
errneg=[];
load("s1_rx_sweep.mat")
J = getCost(xCompensation,xCompensationShoulder,ARM_LENGTH);
synergyPlot = 0.8:0.1:2.7;
for i =1 : max(size(synergyPlot))
    index = find(abs(synergy - synergyPlot(i))<0.1);
    Jav = [Jav; mean(J(index))];
    errpos = [errpos ; max(J(index))-Jav(i)];
    errneg = [errneg ; Jav(i) - min(J(index))];
end
errorbar(synergyPlot,Jav,errneg,errpos,'bo');
hold on
p = polyfit(synergy, J, 2) 
x1 = linspace(min(synergy), max(synergy), 100 );
y1 = polyval(p, x1);
plot(x1, y1, '-k');
xlim([0.5 3])
title('Static Nonlinear Map - Subject 1')
xlabel('Synergy (\theta)')
ylabel('Performance (J)')
grid on
% S2
% subplot(2,2,2)
figure()
Jav=[];
errpos=[];
errneg=[];
load("s2_jm_sweep.mat")
J = getCost(xCompensation,xCompensationShoulder,ARM_LENGTH);
synergyPlot = 0.8:0.1:2.7;
for i =1 : max(size(synergyPlot))
    index = find(abs(synergy - synergyPlot(i))<0.1);
    Jav = [Jav; mean(J(index))];
    errpos = [errpos ; max(J(index))-Jav(i)];
    errneg = [errneg ; Jav(i) - min(J(index))];
end
errorbar(synergyPlot,Jav,errneg,errpos,'bo');
hold on
p = polyfit(synergy, J, 2) 
x1 = linspace(min(synergy), max(synergy), 100 );
y1 = polyval(p, x1);
plot(x1, y1, '-k');
xlim([0.5 3])
title('Static Nonlinear Map - Subject 2')
xlabel('Synergy (\theta)')
ylabel('Performance (J)')
grid on
% S3
% subplot(2,2,3)
figure()
Jav=[];
errpos=[];
errneg=[];
load("s3_dd_sweep.mat")
J = getCost(xCompensation,xCompensationShoulder,ARM_LENGTH);
synergyPlot = 0.8:0.1:2.7;
for i =1 : max(size(synergyPlot))
    index = find(abs(synergy - synergyPlot(i))<0.1);
    Jav = [Jav; mean(J(index))];
    errpos = [errpos ; max(J(index))-Jav(i)];
    errneg = [errneg ; Jav(i) - min(J(index))];
end
errorbar(synergyPlot,Jav,errneg,errpos,'bo');
hold on
p = polyfit(synergy, J, 2) 
x1 = linspace(min(synergy), max(synergy), 100 );
y1 = polyval(p, x1);
plot(x1, y1, '-k');
xlim([0.5 3])
title('Static Nonlinear Map - Subject 3')
xlabel('Synergy (\theta)')
ylabel('Performance (J)')
grid on


clear all; clc; close all;
load('~/Documents/RESEARCH/Projects/Oscillating pore pressures/DATA/NMR/san_andres_NMR.mat');

figure1 = figure(1);
set(figure1, 'Position', [100 200 1100 550]);
axes1 = axes('Parent',figure1,'FontSize', 15, 'FontWeight','normal');

area(before(:,1), before(:,2), 0); hold on;
area(after(:,1), after(:,2), 0,'FaceColor','r');

xlim([0.07 5000]);
set(gca, 'XMinorTick', 'on', 'XScale','log','FontSize', 19, 'FontWeight','normal');
ylabel('Incremental porosity [p.u.]','Interpreter','latex','FontSize', 21,'FontName',...
    'courier', 'FontWeight','bold');
xlabel('$T_{2}$ time distribution [ms]','Interpreter','latex','FontSize', 21,'FontName',...
    'courier', 'FontWeight','bold');
legend('pre-experiment', 'post-experiment','Location','NorthWest','FontSize', 17, 'Interpreter','latex');
legend boxoff;

figure1.PaperPositionMode = 'auto';
print('NMR_data_new','-depsc','-r0');

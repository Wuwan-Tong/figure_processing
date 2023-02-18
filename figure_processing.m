%% setting
% set interpreter: 'latex'/'tex'/'none'
LegendInterpreter='latex';
LabelInterpreter='latex';
% set grid: 'on'/'off'
Xgrid='on';
Ygrid='on';
% set scale: 'linear'/'log'
Xscale='linear';
Yscale='log';
% set line width
linewidth=2;
% export, type:'eps'/'pdf'
name='figure name';
type='pdf'; 

% set position:[left bottom width height]
outer_position =[0 0 1 1];
inner_position=[0.3 0.1 0.4 0.5];
% set(groot,'defaultFigurePaperPositionMode','auto')
%% 
fig=gcf;
ax=gca;

% interpreter
% set(groot, 'defaultLegendInterpreter',LegendInterpreter);
ax.Legend.Interpreter =LegendInterpreter;
ax.TickLabelInterpreter=LabelInterpreter;

% Grid
ax.XGrid = Xgrid;
ax.YGrid = Ygrid;

% Scale
ax.XScale =Xscale;
ax.YScale=Yscale;

% line width
p=ax.Children;
p.LineWidth =linewidth;

% position
ax.OuterPosition=outer_position;
ax.InnerPosition=inner_position;

% export to file
saveas(gcf,name,type)

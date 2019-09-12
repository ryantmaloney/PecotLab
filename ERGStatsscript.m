%%
% [{0, 'BRP'}, ERGStats(AllWhite100BRP, MetaWhite100BRP)]
%%
AllWhite100DKO;
% ERGStatsS=struct([]);
% ERGStatsS(1).color='w';
% ERGStatsS(1).ND='0';
% ERGStats(1).genotype='DKO'
% ERGStats(1).stats=ERGStats(AllWhite100DKOND0);
varNames = {'ND','Genotype', 'Metadata', 'OnTransientPositive', 'OnTransientPositiveMean', 'OnTransientPositiveStd', 'OffTransientNegative','OffTransientNegativeMean','OffTransientNegativeStd', 'SteadyState', 'SteadyStateMean', 'SteadyStateStd'};
varTypes = {'tdouble','string', 'cell', 'cell', 'double','double', 'cell','double', 'double', 'cell','double', 'double'};

ERGTable = table('Size',[7 12],'VariableTypes',varTypes,'VariableNames',varNames);
r=1;
ERGTable(r,:)=[{0, 'BRP'}, ERGStats(AllWhite100BRP, MetaWhite100BRP)];
r=r+1;
ERGTable(r,:)=[{0, 'DKO'}, ERGStats(AllWhite100DKO, MetaWhite100DKO)];
r=r+1;
ERGTable(r,:)=[{0.5, 'BRP'}, ERGStats(AllWhite100BRPND_5, MetaWhite100BRPND_5)];
r=r+1;
ERGTable(r,:)=[{0.5, 'DKO'}, ERGStats(AllWhite100DKOND_5, MetaWhite100DKOND_5)];
r=r+1;
ERGTable(r,:)=[{1, 'BRP'}, ERGStats(AllWhite100BRPND1, MetaWhite100BRPND1)];
r=r+1;
ERGTable(r,:)=[{1, 'DKO'}, ERGStats(AllWhite100DKOND1, MetaWhite100DKOND1)];
r=r+1;
ERGTable(r,:)=[{1.5, 'BRP'}, ERGStats(AllWhite100BRPND1_5, MetaWhite100BRPND1_5)];
r=r+1;
ERGTable(r,:)=[{1.5, 'DKO'}, ERGStats(AllWhite100DKOND1_5, MetaWhite100DKOND1_5)];
r=r+1;
ERGTable(r,:)=[{2, 'BRP'}, ERGStats(AllWhite100BRPND2, MetaWhite100BRPND2)];
r=r+1;
ERGTable(r,:)=[{2, 'DKO'}, ERGStats(AllWhite100DKOND2, MetaWhite100DKOND2)];
r=r+1;
ERGTable(r,:)=[{3, 'BRP'}, ERGStats(AllWhite100BRPND3, MetaWhite100BRPND3)];
r=r+1;
ERGTable(r,:)=[{3, 'DKO'}, ERGStats(AllWhite100DKOND3, MetaWhite100DKOND3)];
r=r+1;
ERGTable(r,:)=[{4, 'BRP'}, ERGStats(AllWhite100BRPND4, MetaWhite100BRPND4)];
r=r+1;
ERGTable(r,:)=[{4, 'DKO'}, ERGStats(AllWhite100DKOND4, MetaWhite100DKOND4)];
r=r+1;
ERGTable(r,:)=[{5, 'BRP'}, ERGStats(AllWhite100BRPND5, MetaWhite100BRPND5)];
r=r+1;
ERGTable(r,:)=[{5, 'DKO'}, ERGStats(AllWhite100DKOND5, MetaWhite100DKOND5)];
r=r+1;
%Dim 1: ND+1, Dim 2, DKO:1, BRP2,
% ERGStatsS{1,1}=ERGStats(AllWhite100DKO):

% ERGStats(AllWhite100DKO);
% ERGTableDim=size(ERGTable);
% for i=1:ERGTableDim(1)
%
%     if ERGTable{i,2}=="DKO"
%
%     elseif ERGTable{i,2}=="BRP"
%
%     end
%
%
% end
figure(2)
clf
% plot(ERGTable{1:2:end, 1}, ERGTable{1:2:end, 'OnTransientPositiveMean'}, 'b');
% hold on;
% plot(ERGTable{1:2:end, 1}, ERGTable{2:2:end, 'OnTransientPositiveMean'}, 'r');
% title('On Transient Positive Mean');
%
% length(ERGTable{1:2:end})

fg3BRP=shadedErrorBar(ERGTable{1:2:end, 1}, ERGTable{1:2:end, 'OnTransientPositiveMean'}, ERGTable{1:2:end, 'OnTransientPositiveStd'},  'lineProps', { 'r--', 'DisplayName','BRP'});
hold on;
fg3DKO=shadedErrorBar(ERGTable{1:2:end, 1}, ERGTable{2:2:end, 'OnTransientPositiveMean'}, ERGTable{2:2:end, 'OnTransientPositiveStd'}, 'lineProps', {'DisplayName','DKO', 'color', 'b'});
hold off
% title('On TransientPositive Mean');
% OTPlegend=legend();
% xlabel('Intensity (ND)');
% ylabel('Voltage (mV)');
legend([fg3BRP.mainLine,fg3DKO.mainLine], {'CTL', ' DKO'});

% 
% clf
% 
% shadedErrorBar(flip(ERGTable{1:2:end, 1}), flip(ERGTable{1:2:end, 'OnTransientPositiveMean'}), flip(ERGTable{1:2:end, 'OnTransientPositiveStd'}), 'lineProps', {'color', 'r'});
% hold on;
% shadedErrorBar(flip(ERGTable{1:2:end, 1}), flip(ERGTable{2:2:end, 'OnTransientPositiveMean'}), flip(ERGTable{2:2:end, 'OnTransientPositiveStd'}), 'lineProps', {'color', 'b'});
% hold off
% title('On TransientPositive Mean');

figure(3)
clf
fg3BRP=shadedErrorBar(ERGTable{1:2:end, 1}, ERGTable{1:2:end, 'OffTransientNegativeMean'}, ERGTable{1:2:end, 'OffTransientNegativeStd'}, 'lineProps', {'r--', 'DisplayName','CTL',});
hold on;
fg3DKO=shadedErrorBar(ERGTable{1:2:end, 1}, ERGTable{2:2:end, 'OffTransientNegativeMean'}, ERGTable{2:2:end, 'OffTransientNegativeStd'}, 'lineProps', {'color', 'b', 'DisplayName','DKO'});
hold off
% title('Off Transient Negative Mean');
% xlabel('Intensity (ND)');
% ylabel('Voltage (mV)');
legend([fg3BRP.mainLine,fg3DKO.mainLine], {'CTL', ' DKO'});

figure(4)
clf
fg3BRP=shadedErrorBar(ERGTable{1:2:end, 1}, ERGTable{1:2:end, 'SteadyStateMean'}, ERGTable{1:2:end, 'SteadyStateStd'}, 'lineProps', {'r--'});
hold on;
fg3DKO=shadedErrorBar(ERGTable{1:2:end, 1}, ERGTable{2:2:end, 'SteadyStateMean'}, ERGTable{2:2:end, 'SteadyStateStd'}, 'lineProps', {'color', 'b'});
hold off
% title('Steady State Mean');
% xlabel('Intensity (ND)');
% 
% ylabel('Voltage (mV)');
legend([fg3BRP.mainLine,fg3DKO.mainLine], {'CTL', ' DKO'});

% figure(3)
% clf
% for i=1:3
%
%    subplot(1,3,i);
%    violin({W_ND0_DKO{i}; W_ND0_BRP{i}}');
% end
% function [OnTransientPositive, OffTransientNegative, steadystate]=ERGStats(ERGArray)

% ERGTable;
totaltrials=0;
for i=1:height(ERGTable)
    alltrials=ERGTable{i,3};
    %     whos
    totaltrials=totaltrials+length(alltrials{1});
end

Trial=1:totaltrials;
% expandedTable=addvars(ERGTable, Trial);

varTypes{4}='double';
varTypes{7}='double';
varTypes{10}='double';
varTypes{13}='double';
varTypes{14}='string';
disp(varTypes);
varNames{13}='Repeat';
varNames{14}='Fly';
disp(varNames);

expandedTable = table('Size', [totaltrials length(varNames)+1], 'VariableTypes', ['double', varTypes], 'VariableNames', ['Trial', varNames]);
eti=1;

%     whos
% for j=1:length(alltrials)

for i=1:height(ERGTable)
    alltrials=ERGTable{i,4};
    for j=1:length(alltrials{1})
        
%         alltrials=alltrials{:};
%         disp({eti, alltrials(j)})
        %         whos
        metadata=ERGTable(i,:);
        %         whos metadata
        %         whos alltrials
%         alltrials(j);
        %         metadata{1,3}
        %         metadata{1, 3}=alltrials(j);
        %         metadata{3}={alltrials(j)};
        OTPtable=ERGTable{i,4};
        OTPtable=OTPtable{1};
        OTNtable=ERGTable{i,7};
        OTNtable=OTNtable{1};
        SStable=ERGTable{i,10};
        SStable=SStable{1};
%         whos OTPtable
        flymeta=ERGTable{i,3};
        flymeta=flymeta{1};
        
        expandedTable(eti, 1)={eti};
        expandedTable(eti, 2)={metadata{1,1}};
        expandedTable(eti, 3)={metadata{1,2}};
        expandedTable(eti, 5)={OTPtable(j,1)};
%         expandedTable(eti, 5)={OTPtable};
%         expandedTable(eti, 6)={OTPtable};
        expandedTable(eti, 8)={OTNtable(j,1)};
%         expandedTable(eti, 8)={OTPtable};
%         expandedTable(eti, 9)={OTPtable};
        expandedTable(eti, 11)={SStable(j,1)};
        expandedTable(eti, 14)={mod(eti-1,10)+1};
        expandedTable(eti, 15)={num2str(flymeta(j).fly)}; %Flies
        
        
%         expandedTable(eti, 11)={OTPtable};
%         expandedTable(eti, 12)={OTPtable};
%         expandedTable(eti, 2)={metadata{1,1}};
        eti=eti+1;
    end
end
% end


e2=expandedTable(:, [1:3, 5, 8, 11, 14:15]);
% e2=expandedTable(:, [1:4, 7, 10, 13:14]);
% disp(e2{1:4, :});
writetable(e2, 'ERGStats.csv');

%%
% modelspec = 'OnTransientPositive ~ Genotype*ND -Genotype:ND';
% mdl = fitglm(e3,modelspec,'Distribution')
% %%
% function ERGTraits=ERGStats(ERGArray, ERGMeta)
% dt=10/length(ERGArray);
% 
% % 1.255/dt;
% % 1.26/dt;
% 
% OnTransientPositive=max(ERGArray(:, round(1.255/dt):round(1.31/dt)),[],2);
% steadystate=mean(ERGArray(:, round(1.6/dt):round(1.85/dt)),2);
% OffTransientNegative=min(ERGArray(:, round(1.88/dt):round(2/dt)),[],2);
% 
% OnTransientPositive=OnTransientPositive*1000;
% steadystate=steadystate*1000;
% OffTransientNegative=OffTransientNegative*1000-steadystate;
% 
% OnTransientPositiveMean=mean(OnTransientPositive);
% OffTransientNegativeMean=mean(OffTransientNegative);
% SteadyStateMean=mean(steadystate);
% 
% n=length(OnTransientPositive);
% % n=1;
% 
% OnTransientPositiveStd=std(OnTransientPositive)/sqrt(n);
% OffTransientNegativeStd=std(OffTransientNegative)/sqrt(n);
% SteadyStateStd=std(steadystate)/sqrt(n);
% 
% ERGTraits={OnTransientPositive, OnTransientPositiveMean, OnTransientPositiveStd, OffTransientNegative, OffTransientNegativeMean,OffTransientNegativeStd, steadystate, SteadyStateMean, SteadyStateStd, ERGMeta(1,:).fly};
% % size(ERGArray(:, round(1.255/dt):round(1.26/dt)))
% % disp(Max1)
% 
% end
% % function expandedTable=expandTable(ERGTable)
% 
% % end
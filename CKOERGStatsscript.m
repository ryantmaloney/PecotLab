%%
% [{0, 'Gal4'}, ERGStats(AllWhite100Gal4, MetaWhite100Gal4)]
%%
AllWhite100CKO;
% ERGStatsS=struct([]);
% ERGStatsS(1).color='w';
% ERGStatsS(1).ND='0';
% ERGStats(1).genotype='CKO'
% ERGStats(1).stats=ERGStats(AllWhite100CKOND0);
varNames = {'ND','Genotype', 'Metadata', 'OnTransientPositive', 'OnTransientPositiveMean', 'OnTransientPositiveStd', 'OffTransientNegative','OffTransientNegativeMean','OffTransientNegativeStd', 'SteadyState', 'SteadyStateMean', 'SteadyStateStd'};
varTypes = {'double','string', 'cell', 'cell', 'double','double', 'cell','double', 'double', 'cell','double', 'double'};

ERGTable = table('Size',[7 12],'VariableTypes',varTypes,'VariableNames',varNames);
r=1;
ERGTable(r,:)=[{0, 'Gal4'}, ERGStats(AllWhite100Gal4, MetaWhite100Gal4)];
r=r+1;
ERGTable(r,:)=[{0, 'CKO'}, ERGStats(AllWhite100CKO, MetaWhite100CKO)];
r=r+1;
% ERGTable(r,:)=[{0.5, 'Gal4'}, ERGStats(AllWhite100Gal4ND_5, MetaWhite100Gal4ND_5)];
% r=r+1;
% ERGTable(r,:)=[{0.5, 'CKO'}, ERGStats(AllWhite100CKOND_5, MetaWhite100CKOND_5)];
% r=r+1;
ERGTable(r,:)=[{1, 'Gal4'}, ERGStats(AllWhite100Gal4ND1, MetaWhite100Gal4ND1)];
r=r+1;
ERGTable(r,:)=[{1, 'CKO'}, ERGStats(AllWhite100CKOND1, MetaWhite100CKOND1)];
r=r+1;
% ERGTable(r,:)=[{1.5, 'Gal4'}, ERGStats(AllWhite100Gal4ND1_5, MetaWhite100Gal4ND1_5)];
% r=r+1;
% ERGTable(r,:)=[{1.5, 'CKO'}, ERGStats(AllWhite100CKOND1_5, MetaWhite100CKOND1_5)];
% r=r+1;
ERGTable(r,:)=[{2, 'Gal4'}, ERGStats(AllWhite100Gal4ND2, MetaWhite100Gal4ND2)];
r=r+1;
ERGTable(r,:)=[{2, 'CKO'}, ERGStats(AllWhite100CKOND2, MetaWhite100CKOND2)];
r=r+1;
ERGTable(r,:)=[{3, 'Gal4'}, ERGStats(AllWhite100Gal4ND3, MetaWhite100Gal4ND3)];
r=r+1;
ERGTable(r,:)=[{3, 'CKO'}, ERGStats(AllWhite100CKOND3, MetaWhite100CKOND3)];
r=r+1;
ERGTable(r,:)=[{4, 'Gal4'}, ERGStats(AllWhite100Gal4ND4, MetaWhite100Gal4ND4)];
r=r+1;
ERGTable(r,:)=[{4, 'CKO'}, ERGStats(AllWhite100CKOND4, MetaWhite100CKOND4)];
r=r+1;
ERGTable(r,:)=[{5, 'Gal4'}, ERGStats(AllWhite100Gal4ND5, MetaWhite100Gal4ND5)];
r=r+1;
ERGTable(r,:)=[{5, 'CKO'}, ERGStats(AllWhite100CKOND5, MetaWhite100CKOND5)];
r=r+1;
%Dim 1: ND+1, Dim 2, CKO:1, Gal42,
% ERGStatsS{1,1}=ERGStats(AllWhite100CKO):

% ERGStats(AllWhite100CKO);
% ERGTableDim=size(ERGTable);
% for i=1:ERGTableDim(1)
%
%     if ERGTable{i,2}=="CKO"
%
%     elseif ERGTable{i,2}=="Gal4"
%
%     end
%
%
% end
figure(6)
clf
% plot(ERGTable{1:2:end, 1}, ERGTable{1:2:end, 'OnTransientPositiveMean'}, 'b');
% hold on;
% plot(ERGTable{1:2:end, 1}, ERGTable{2:2:end, 'OnTransientPositiveMean'}, 'r');
% title('On Transient Positive Mean');
%
% length(ERGTable{1:2:end})

fg3Gal4=shadedErrorBar(ERGTable{1:2:end, 1}, ERGTable{1:2:end, 'OnTransientPositiveMean'}, ERGTable{1:2:end, 'OnTransientPositiveStd'},  'lineProps', { 'r--', 'DisplayName','Gal4'});
hold on;
fg3CKO=shadedErrorBar(ERGTable{1:2:end, 1}, ERGTable{2:2:end, 'OnTransientPositiveMean'}, ERGTable{2:2:end, 'OnTransientPositiveStd'}, 'lineProps', {'DisplayName','CKO', 'color', 'b'});
hold off
title('On TransientPositive Mean');
OTPlegend=legend();
xlabel('Intensity (ND)');
ylabel('Voltage (mV)');
legend([fg3Gal4.mainLine,fg3CKO.mainLine], {'CTL', ' CKO'});

% 
% clf
% 
% shadedErrorBar(flip(ERGTable{1:2:end, 1}), flip(ERGTable{1:2:end, 'OnTransientPositiveMean'}), flip(ERGTable{1:2:end, 'OnTransientPositiveStd'}), 'lineProps', {'color', 'r'});
% hold on;
% shadedErrorBar(flip(ERGTable{1:2:end, 1}), flip(ERGTable{2:2:end, 'OnTransientPositiveMean'}), flip(ERGTable{2:2:end, 'OnTransientPositiveStd'}), 'lineProps', {'color', 'b'});
% hold off
% title('On TransientPositive Mean');

figure(7)
clf
fg3Gal4=shadedErrorBar(ERGTable{1:2:end, 1}, ERGTable{1:2:end, 'OffTransientNegativeMean'}, ERGTable{1:2:end, 'OffTransientNegativeStd'}, 'lineProps', {'r--', 'DisplayName','CTL',});
hold on;
fg3CKO=shadedErrorBar(ERGTable{1:2:end, 1}, ERGTable{2:2:end, 'OffTransientNegativeMean'}, ERGTable{2:2:end, 'OffTransientNegativeStd'}, 'lineProps', {'color', 'b', 'DisplayName','CKO'});
hold off
title('Off Transient Negative Mean');
xlabel('Intensity (ND)');
ylabel('Voltage (mV)');
legend([fg3Gal4.mainLine,fg3CKO.mainLine], {'CTL', ' CKO'});

figure(8)
clf
fg3Gal4=shadedErrorBar(ERGTable{1:2:end, 1}, ERGTable{1:2:end, 'SteadyStateMean'}, ERGTable{1:2:end, 'SteadyStateStd'}, 'lineProps', {'r--'});
hold on;
fg3CKO=shadedErrorBar(ERGTable{1:2:end, 1}, ERGTable{2:2:end, 'SteadyStateMean'}, ERGTable{2:2:end, 'SteadyStateStd'}, 'lineProps', {'color', 'b'});
hold off
title('Steady State Mean');
xlabel('Intensity (ND)');
% 
ylabel('Voltage (mV)');
legend([fg3Gal4.mainLine,fg3CKO.mainLine], {'CTL', ' CKO'});

% figure(3)
% clf
% for i=1:3
%
%    subplot(1,3,i);
%    violin({W_ND0_CKO{i}; W_ND0_Gal4{i}}');
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
writetable(e2, 'CKOERGStats.csv');

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
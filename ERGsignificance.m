function [ERGTable, etrunc]=ERGsignificance(OS)
%
varNames = {'ND','Genotype', 'Metadata', 'OnTransientPositive', 'OnTransientPositiveMean', 'OnTransientPositiveStd', 'OffTransientNegative','OffTransientNegativeMean','OffTransientNegativeStd', 'SteadyState', 'SteadyStateMean', 'SteadyStateStd'};
varTypes = {'double','string', 'cell', 'cell', 'double','double', 'cell','double', 'double', 'cell','double', 'double'};
numFlies=length(OS)*length(OS(1).ND);
ERGTable = table('Size',[numFlies length(varNames)],'VariableTypes',varTypes,'VariableNames',varNames);
%
r=1;
figure();
hold on;
disp(length(OS));
for g=1:length(OS)
    genotypename=OS(g).genotype;
    for ND=1:length(OS(1).ND)
        
%         disp({num2str(ND), genotypename{1}})
%         x=ERGStats(OS(g).ND(ND).All,  OS(g).ND(ND).Meta);
%         whos x
%         y={num2str(ND-1), genotypename{1}};
%         whos y
%         disp('bloopers')

        ERGTable(r,:)=[{ND-1, genotypename{1}}, ERGStats(OS(g).ND(ND).All, OS(g).ND(ND).Meta)];
        r=r+1;

    end
    disp(1*g);
    disp(-1+1*g+length(OS(1).ND));
    disp('hello');
    disp(1+(g-1)*length(OS(1).ND));
    disp((g-1)*length(OS(1).ND));
%     figure()
    indexarray=(1+(g-1)*length(OS(1).ND)):(g)*length(OS(1).ND)
    figure(1)
    hold on
    shadedErrorBar(ERGTable{indexarray, 1}, ERGTable{indexarray, 'OnTransientPositiveMean'}, ERGTable{indexarray, 'OnTransientPositiveStd'},  'lineProps', {'DisplayName',genotypename{1}});

    figure(2)
    hold on
    shadedErrorBar(ERGTable{indexarray, 1}, ERGTable{indexarray, 'OffTransientNegativeMean'}, ERGTable{indexarray, 'OffTransientNegativeStd'},  'lineProps', {'DisplayName',genotypename{1}});

    figure(3)
    hold on
    shadedErrorBar(ERGTable{indexarray, 1}, ERGTable{indexarray, 'SteadyStateMean'}, ERGTable{indexarray, 'SteadyStateStd'},  'lineProps', {'DisplayName',genotypename{1}});

end

for i=1:3
    figure(i)
    hold off
    
    
    OTPlegend=legend();
    xlabel('Intensity (ND)');
    ylabel('Voltage (mV)');
end

figure(1)
title('On TransientPositive Mean');

figure(2)
title('Off TransientPositive Mean');

figure(3)
title('Steady State Mean');
%     legend([fg3Gal4.mainLine,fg3CKO.mainLine], {'CTL', ' CKO'});


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

etrunc=expandedTable(:, [1:3, 5, 8, 11, 14:15]);

end
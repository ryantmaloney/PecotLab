function H=plotERG(OS, varargin)
% PLOTERG(OS, combinedgraph) Plot a structure from
% PLOTERG(OS) Plot

if nargin > 0
    disp(nargin)
    combinedgraph=varargin{1};
else
    combinedgraph=true;
end

% whos combinedgraph
if combinedgraph
    disp('Combining Graphs')
else
    disp('Not combining Graphs')
end
lw=.5;
% figure(5)
yscalefactor=1000;
t=1:length(OS(1).ND(1).average);
t=t*10/length(OS(1).ND(1).average);
t=t-1.25;

clf
cm1=jet;
cm2=jet/2;

hold on
mainlineArray=gobjects(6,1);

if combinedgraph
    figure(1)
    clf
    mainlineArray=gobjects(6*length(OS),1);
end

for g=1:length(OS)
    
    ciinc=8;
    ci=12;
    if ~combinedgraph
        figure(g)
        clf
        ciinc=40;
    end
    
    
    for ND=1:6 %This should be 6
        
        DisplayName=strcat(string(OS(g).genotype),'?ND', num2str(ND-1));
        H=shadedErrorBar(t,  OS(g).ND(ND).average.*yscalefactor, OS(g).ND(ND).SE*yscalefactor,...
            'lineProps', {'color', cm1(ci, :)/g,  'DisplayName', string(DisplayName), 'LineWidth',  lw});
        beAline=H.mainLine;
        %         disp(strcat('ND:',num2str(ND),'g:', num2str(g)));
        %         whos beAline
        if combinedgraph
            mainlineArray(ND+(g-1)*6,1)=beAline;
        else
            mainlineArray(ND,1)=beAline;
        end
        %         whos mainlineArray
        ci=ci+ciinc;
    end
    if ~combinedgraph
        legendArray=mainlineArray;
        %         whos legendArray
        %         disp(size(numel(legendArray)));
        legendArray=squeeze(reshape(legendArray, numel(legendArray), 1));
        
        %         whos legendArray
        legend(legendArray);
        
        xlabel('Time (s)')
        ylabel('Voltage (mV)')
        title('DIPY Mis vs DIPY Control responses to light at different intensities')
        
        hold off
    end
end

if combinedgraph
    legendArray=mainlineArray(:, :);
    whos legendArray
    legend(legendArray);
    
    xlabel('Time (s)')
    ylabel('Voltage (mV)')
    title('DIPY Mis vs DIPY Control responses to light at different intensities')
    
    hold off
end

H=mainlineArray;

end

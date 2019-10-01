function [avgbytrait, se, sd, allTraces, metadata]=AvgERGTraceByTrait(S, Color, Genotype, Intensity, ND)
avgbytrait=0;
numtraces=0;
% whos
disp(strcat('Loading ', Color, ' ', Genotype, ' at ND ', num2str(ND)));

j=1;
metadata=S(1);

for i=1:length(S)
    
    if Color==true
        ColorBool=true;
    else
        ColorBool=strcmp(S(i).color, Color);
    end
    
    if Genotype=='a'
        GenotypeBool=true;
    else
        GenotypeBool=strcmp(S(i).genotype, Genotype);
    end
    
    if Intensity=='a'
        IntensityBool=true;
    else
        IntensityBool=S(i).intensity==Intensity;
    end
    
    KeepBool=~strcmp(S(i).keep, 'n');
    if strcmp(ND, 'a')
        NDBool=true;
    else
        NDBool=(S(i).ND==ND);
    end
    %     disp('Color|Genotype|Int|Keep|ND');
    %     disp([ColorBool, GenotypeBool, IntensityBool, KeepBool, NDBool]);
    if ColorBool && GenotypeBool && IntensityBool && KeepBool && NDBool
        %         disp(S(i).trial);
        [thistrial, allrepeats]=ERGLoad(S(i).fly, S(i).trial, S(i).filelocation);
        avgbytrait=avgbytrait+ERGLoad(S(i).fly, S(i).trial, S(i).filelocation);
        numtraces=numtraces+1;
        
        dt=10/length(thistrial);
        %         dt=.000005;
        for k=1:10
            %         disp((j-1)*10+k)
            metadata((j-1)*10+k).fly=S(i).fly;
            metadata((j-1)*10+k).genotype=S(i).genotype;
            metadata((j-1)*10+k).color=S(i).color;
            metadata((j-1)*10+k).trial=k;
        end
        allTraces(j, :, :)=allrepeats;
        
        j=j+1;
    end
    
end

avgbytrait=avgbytrait/numtraces;

avgbytrait=avgbytrait-mean(avgbytrait(1/dt:1.2/dt));
% whos metadata
allTraces=reshape(allTraces, [], length(thistrial));
metadata=metadata';
% metadata=reshape(metadata, [], length(thistrial));
% whos
numtraces=size(allTraces);
sd=std(squeeze(allTraces(:,:)), 0, 1);
se=std(squeeze(allTraces(:,:)), 0, 1)/sqrt(numtraces(1));

end
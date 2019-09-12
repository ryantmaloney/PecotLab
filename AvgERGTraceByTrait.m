function [avgbytrait, se, allTraces]=AvgERGTraceByTrait(S, Color, Genotype, Intensity, ND)
avgbytrait=0;
numtraces=0;
% figure()
% hold on
j=1;
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
    
    if ColorBool && GenotypeBool && IntensityBool && KeepBool && NDBool
%         disp(S(i).trial);
        [thistrial, allrepeats]=ERGLoad(S(i).fly, S(i).trial);
        avgbytrait=avgbytrait+ERGLoad(S(i).fly, S(i).trial);
        numtraces=numtraces+1;
        
        dt=.000005;

        allTraces(j, :, :)=allrepeats;
        
        j=j+1;
    end
    
end

avgbytrait=avgbytrait/numtraces;

avgbytrait=avgbytrait-mean(avgbytrait(200000:240000));

allTraces=reshape(allTraces, [], 2000000);
% whos
numtraces=size(allTraces);
se=std(squeeze(allTraces(:,:)), 0, 1)/sqrt(numtraces(1));

end
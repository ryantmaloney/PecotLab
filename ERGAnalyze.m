function OS=ERGAnalyze(S, Genotypestoanalyze)
% ERGANALYZE Analyzes ERG data based on an ERG structure and a list of
% genotypes.



OS=struct([]);

geni=1;
for j=Genotypestoanalyze
    OS(geni).genotype=j;
    for i=0:5
        [OS(geni).ND(i).average, OS(geni).ND(i).SE, OS(geni).ND(i).SD, OS(geni).ND(i).All]=AvgERGTraceByTrait(S, 'w', j, 100, i);
    end
end

end
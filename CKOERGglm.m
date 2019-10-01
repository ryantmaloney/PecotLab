%%
% clear modelspec

formula = 'OnTransientPositive ~ Genotype*ND';
mdl = fitglm(e2, formula)

formula = 'OffTransientNegative ~ Genotype*ND';
mdl = fitglm(e2, formula)

formula = 'SteadyState ~ Genotype*ND';
mdl = fitglm(e2, formula)

%%

e3=e2;
e3.Fly=categorical(e3.Fly);
% 
% disp(formula)
formula = 'SteadyState ~ Genotype*ND  + (1|Fly)';
sslme=fitlme(e3,formula)

disp(formula)
formula = 'SteadyState ~ ND + (1|Fly)';
sslme2=fitlme(e2,formula)

sscomptheor=compare(sslme2, sslme, 'CheckNesting',true)
chi2pdf(2*(sscomptheor.LogLik(2)-sscomptheor.LogLik(1)),2)*2
% compare(sslme2, sslme, 'NSim', 100)
% 
% disp(formula)
% formula = 'SteadyState ~ Genotype*ND + (1|Fly)';
% sslme=fitlme(e3,formula)
% 
% disp(formula)
% formula = 'SteadyState ~ ND + (1|Fly)';
% sslme2=fitlme(e2,formula)
%
% compare(sslme2, sslme, 'CheckNesting',true)
% sscompsim=compare(sslme2, sslme, 'NSim', 1000)

%%
formula = 'OnTransientPositive ~ Genotype*ND + (1|Fly)';
sslme=fitlme(e3,formula,'FitMethod', 'ML')
disp('Hi');
formula = 'OnTransientPositive ~ ND  + (1|Fly)';
sslme2=fitlme(e3,formula,'FitMethod', 'ML')

ontcomptheor=compare(sslme2, sslme, 'CheckNesting',true)
chi2cdf(ontcomptheor.LRStat(2), ontcomptheor.deltaDF(2), 'upper')
% chi2pdf(2*(ontcomptheor.LogLik(2)-ontcomptheor.LogLik(1)),2)*2


ontcompexp=compare(sslme2, sslme, 'NSim',1000)
chi2cdf(ontcompexp.LRStat(2), ontcomptheor.deltaDF(2), 'upper')

%% On Transient Positive by ND
disp('On Transient Positive by ND');
for NDs=[0, 1, 2, 3, 4, 5]
    formula = 'OnTransientPositive ~ Genotype +  (1|Fly)';
    sslme=fitlme(e3([e3.ND==NDs],:),formula);
    % disp('Hi');
    formula = 'OnTransientPositive ~ 1 + (1|Fly)';
    sslme2=fitlme(e3([e3.ND==NDs],:),formula);
    
    ontcomptheor=compare(sslme2, sslme, 'CheckNesting',true);
    disp(['p value for ', num2str(NDs), ' is ', num2str( chi2cdf(ontcomptheor.LRStat(2), ontcomptheor.deltaDF(2), 'upper'))])
%     chi2cdf(ontcomptheor.LRStat(2), ontcomptheor.deltaDF(2), 'upper')
end
% ontcompsim=compare(sslme2, sslme, 'NSim', 1000)

%% SS bu ND
disp('SS by ND');
for NDs=[0,  1, 2, 3, 4, 5]
    formula = 'SteadyState ~ Genotype +  (1|Fly)';
    sslme=fitlme(e3([e3.ND==NDs],:),formula);
    % disp('Hi');
    formula = 'SteadyState ~ 1 + (1|Fly)';
    sslme2=fitlme(e3([e3.ND==NDs],:),formula);
    
    ontcomptheor=compare(sslme2, sslme, 'CheckNesting',true);
    disp(['p value for ', num2str(NDs), ' is ', num2str( chi2cdf(ontcomptheor.LRStat(2), ontcomptheor.deltaDF(2), 'upper'))])
%     chi2cdf(ontcomptheor.LRStat(2), ontcomptheor.deltaDF(2), 'upper')
end
%%
disp('Off Transient by ND')
for NDs=[0, 1, 2, 3, 4, 5]
    formula = 'OffTransientNegative ~ Genotype +  (1|Fly)';
    sslme=fitlme(e3([e3.ND==NDs],:),formula);
    % disp('Hi');
    formula = 'OffTransientNegative ~ 1 + (1|Fly)';
    sslme2=fitlme(e3([e3.ND==NDs],:),formula);
    
    ontcomptheor=compare(sslme2, sslme, 'CheckNesting',true);
    disp(['p value for ', num2str(NDs), ' is ', num2str( chi2cdf(ontcomptheor.LRStat(2), ontcomptheor.deltaDF(2), 'upper'))])
%     chi2cdf(ontcomptheor.LRStat(2), ontcomptheor.deltaDF(2), 'upper')
end
%%
formula = 'OffTransientNegative ~ Genotype*ND  + (1|Fly)';
sslme=fitlme(e3,formula);

formula = 'OffTransientNegative ~ ND  + (1|Fly)';
sslme2=fitlme(e3,formula);

offtcomptheor=compare(sslme2, sslme, 'CheckNesting',true)
% chi2pdf(2*(offtcomptheor.LogLik(2)-offtcomptheor.LogLik(1)),2)*2
% disp('check')
chi2cdf(offtcomptheor.LRStat(2), 2, 'upper')
% offtcompsim=compare(sslme2, sslme, 'NSim', 1000);
% aout=anova(sslme)
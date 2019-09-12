
function ERGTraits=ERGStats(ERGArray, metadata)
dt=10/length(ERGArray);

OnTransientPositive=max(ERGArray(:, round(1.255/dt):round(1.31/dt)),[],2);
steadystate=mean(ERGArray(:, round(1.6/dt):round(1.85/dt)),2);
OffTransientNegative=min(ERGArray(:, round(1.88/dt):round(2/dt)),[],2);

OnTransientPositive=OnTransientPositive*1000;
steadystate=steadystate*1000;
OffTransientNegative=OffTransientNegative*1000-steadystate;

OnTransientPositiveMean=mean(OnTransientPositive);
OffTransientNegativeMean=mean(OffTransientNegative);
SteadyStateMean=mean(steadystate);

n=length(OnTransientPositive);
% n=1;

OnTransientPositiveStd=std(OnTransientPositive)/sqrt(n);
OffTransientNegativeStd=std(OffTransientNegative)/sqrt(n);
SteadyStateStd=std(steadystate)/sqrt(n);
whos metadata
ERGTraits={metadata, OnTransientPositive, OnTransientPositiveMean, OnTransientPositiveStd, OffTransientNegative, OffTransientNegativeMean,OffTransientNegativeStd, steadystate, SteadyStateMean, SteadyStateStd};
% size(ERGArray(:, round(1.255/dt):round(1.26/dt)))
% disp(Max1)

end
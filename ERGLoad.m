function [avg2, allmatrix]=ERGLoad(flynumber, trialnumber, filepathstr)
% filepathstr='/Users/ryanmaloney/Dropbox/Pecot/ERGs/PRMisexpression';
% x=dir('/Users/ryanmaloney/Dropbox/Pecot/ERGs/ERG');
% x=dir('/Users/ryanmaloney/Dropbox/Pecot/ERGs/CKO-ERGS');
x=dir(filepathstr);

numfiles=size(x);
for i=1:numfiles
	filename=string(x(i).name);

    regexExp=['(F', num2str(flynumber), ').*(T', num2str(trialnumber), ').*(RecordWave)'];

	if regexp(filename, regexExp)
%         disp(x(i).name);
        matchfilename=x(i).name;
    end 
end

if ~exist('matchfilename')
	disp(['No file exists for Fly',num2str(flynumber),'trial',num2str(trialnumber)]);
	return
end
%DKO vs BRP
% filepath=['/Users/ryanmaloney/Dropbox/Pecot/ERGs/ERG/', matchfilename];
%CKO vs Gal4
% filepath=['/Users/ryanmaloney/Dropbox/Pecot/ERGs/CKO-ERGS/', matchfilename];
filepath=[filepathstr,'/', matchfilename];

D=IBWread(filepath);

t=1:D.Nsam;
t=t*D.dx;
%
% filterwindow=1001;
lowpassfreq=1000;
% downsamplerate=floor(filterwindow/2);
downsamplerate=floor(1/lowpassfreq/D.dx/2);
% downsamplerate=1;

triallength=2000000;
repeats=D.Nsam/triallength;
% disp('Repeats!');
% disp(repeats);
% disp(1/D.dx);
avg2=1:downsamplerate:triallength;
avg2=avg2.*0;

for i=1:repeats
    offset=triallength*(i-1);
    nextTrial=D.y(1+offset:triallength+offset);
    nextTrial=nextTrial-mean(nextTrial(200000:240000));
%     filterwindow=1001;
%     nextTrial=medfilt1(nextTrial, filterwindow);
    nextTrial=lowpass(nextTrial, lowpassfreq, 1/D.dx);

%     whos
    
    avg2=avg2+nextTrial(1:downsamplerate:end)';
    allmatrix(i, :)=nextTrial(1:downsamplerate:end);
%     whos
    
end

avg2=avg2/repeats;

allmatrix;

end
function [avg2, allmatrix]=ERGLoad(flynumber, trialnumber)

x=dir('/Users/ryanmaloney/Dropbox/Pecot/ERGs/ERG');

numfiles=size(x);
for i=1:numfiles
	filename=string(x(i).name);

    regexExp=['(F', num2str(flynumber), ').*(T', num2str(trialnumber), ').*(RecordWave)'];

	if regexp(filename, regexExp)
        disp(x(i).name);
        matchfilename=x(i).name;
    end 
end
% 
if ~exist('matchfilename')
	disp(['No file exists for Fly',num2str(flynumber),'trial',num2str(trialnumber)]);
	return
end

filepath=['/Users/ryanmaloney/Dropbox/Pecot/ERGs/ERG/', matchfilename];
D=IBWread(filepath);
t=1:D.Nsam;
t=t*D.dx;

triallength=2000000;
repeats=D.Nsam/triallength;

avg2=zeros(1,triallength);

for i=1:repeats
    offset=triallength*(i-1);
    nextTrial=D.y(1+offset:triallength+offset);
    nextTrial=nextTrial-mean(nextTrial(200000:240000));
    nextTrial=medfilt1(nextTrial, 111);
   
    avg2=avg2+nextTrial';
    allmatrix(i, :)=nextTrial;
    
end

avg2=avg2/repeats;

% stderror
allmatrix;

end
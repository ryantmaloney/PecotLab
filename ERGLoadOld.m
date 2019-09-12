function ERGtrace=ERGLoad(flynumber, trialnumber)

x=dir('/Users/ryanmaloney/Dropbox/Pecot/ERGs/ERG');

% flynumber=2;
% trialnumber=3;

numfiles=size(x);
for i=1:numfiles
	filename=string(x(i).name);
	regexExp=['(F', num2str(flynumber), ').*(T', num2str(trialnumber), ').*(RecordWave)'];
%     regexExp="(F2).*(T2).*(RecordWave)";
%     disp(regexExp)
	if regexp(filename, regexExp)
        disp(x(i).name); 
    end 
end

end
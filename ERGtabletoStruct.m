% function S=ERGtabletoStruct()

% function S=ERGtabletoStruct()

%For DKO vs BRP
% filename = '/Users/ryanmaloney/Dropbox/Matlab/PecotAnalysis/ERGTable.csv';
% for CKO vs Gal4
% filename = '/Users/ryanmaloney/Dropbox/Matlab/PecotAnalysis/ERGTableCKO2.csv';
% For Misexpression vs Control
filename = '/Users/ryanmaloney/Dropbox/Matlab/PecotAnalysis/ERGTablePRMisexpression.csv';

% M = readtable(filename, 'HeaderLines', 1)
M = readtable(filename);
S = struct([]);
for i=0:(height(M)-1)
   S(i+1).keep=M{i+1, 'keep'};
%    S(i+1).date=M{i+1, 'date'};
   S(i+1).ND=M{i+1, 'ND'};
   S(i+1).fly=M{i+1, 'fly'};
   S(i+1).genotype=M{i+1, 'genotype'};
   S(i+1).trial=M{i+1, 'trial'};
   S(i+1).color='w';
   S(i+1).intensity=100;
%    disp(i)
end
% endS

E=S;
disp('Done')

% %For DKO vs BRP
% filename = '/Users/ryanmaloney/Dropbox/Matlab/PecotAnalysis/ERGTable.csv';
% % for CKO vs Gal4
% % filename = '/Users/ryanmaloney/Dropbox/Matlab/PecotAnalysis/ERGTableCKO.csv';
% % M = readtable(filename, 'HeaderLines', 1)
% M = readtable(filename);
% S = struct([]);
% for i=0:max(M.trial)
%    S(i+1).keep=M{i+1, 'keep'};
%    S(i+1).date=M{i+1, 'date'};
%    S(i+1).ND=M{i+1, 'ND'};
%    S(i+1).fly=M{i+1, 'fly'};
%    S(i+1).genotype=M{i+1, 'genotype'};
%    S(i+1).trial=M{i+1, 'trial'};
%    S(i+1).color=M{i+1, 'color'};
%    S(i+1).intensity=M{i+1, 'intensity'};
% end
% % endS
% 
% E=S;
% disp('Done')
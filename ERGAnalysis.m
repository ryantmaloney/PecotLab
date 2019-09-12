% ERGLoad(2,2);
%Need to fix: different dates
%%

filename = 'ERGTable.csv';
M = readtable(filename)

%%
%%
% for i=47:59
% E(i).fly=8;
% E(i).genotype='DKO';
% end
E=S;
%% Analyze Data
%Here I need to get the traces and collapse by intensity, color, and
%genotype
tic
% AvgBlue10DKO=AvgERGTraceByTrait(E, 'b', 'DKO', 10, 0);
% AvgBlue10BRP=AvgERGTraceByTrait(E, 'b', 'BRP', 10, 0);
[AvgBlue100DKO, SEBlue100DKO, SDBlue100DKO, AllBlue100DKO]=AvgERGTraceByTrait(E, 'b', 'DKO', 100, 0);
[AvgBlue100BRP, SEBlue100BRP, SDBlue100BRP, AllBlue100BRP]=AvgERGTraceByTrait(E, 'b', 'BRP', 100, 0);
[AvgBlue100BRPND3, SEBlue100BRPND3, SDBlue100BRPND3, AllBlue100BRPND3]=AvgERGTraceByTrait(E, 'b', 'BRP', 100, 3);
[AvgBlue100BRPND2, SEBlue100BRPND2, SDBlue100BRPND2, AllBlue100BRPND2]=AvgERGTraceByTrait(E, 'b', 'BRP', 100, 2);
[AvgBlue100BRPND1, SEBlue100BRPND1, SDBlue100BRPND1, AllBlue100BRPND1]=AvgERGTraceByTrait(E, 'b', 'BRP', 100, 1);
[AvgBlue100DKOND3, SEBlue100DKOND3, SDBlue100DKOND3, AllBlue100DKOND3]=AvgERGTraceByTrait(E, 'b', 'DKO', 100, 3);
[AvgBlue100DKOND2, SEBlue100DKOND2, SDBlue100DKOND2, AllBlue100DKOND2]=AvgERGTraceByTrait(E, 'b', 'DKO', 100, 2);
[AvgBlue100DKOND1, SEBlue100DKOND1, SDBlue100DKOND1, AllBlue100DKOND1]=AvgERGTraceByTrait(E, 'b', 'DKO', 100, 1);

toc

%%
% White
% AvgWhite10DKO=AvgERGTraceByTrait(E, 'w', 'DKO', 10, 0);
% AvgWhite10BRP=AvgERGTraceByTrait(E, 'w', 'BRP', 10, 0);
[AvgWhite100DKO, SEWhite100DKO, SDWhite100DKO, AllWhite100DKO, MetaWhite100DKO]=AvgERGTraceByTrait(E, 'w', 'DKO', 100, 0);
[AvgWhite100BRP, SEWhite100BRP, SDWhite100BRP, AllWhite100BRP, MetaWhite100BRP]=AvgERGTraceByTrait(E, 'w', 'BRP', 100, 0);

[AvgWhite100BRPND5, SEWhite100BRPND5, SDWhite100BRPND5, AllWhite100BRPND5, MetaWhite100BRPND5]=AvgERGTraceByTrait(E, 'w', 'BRP', 100, 5);
[AvgWhite100BRPND4, SEWhite100BRPND4, SDWhite100BRPND4, AllWhite100BRPND4, MetaWhite100BRPND4]=AvgERGTraceByTrait(E, 'w', 'BRP', 100, 4);
[AvgWhite100BRPND3, SEWhite100BRPND3, SDWhite100BRPND3, AllWhite100BRPND3, MetaWhite100BRPND3]=AvgERGTraceByTrait(E, 'w', 'BRP', 100, 3);
[AvgWhite100BRPND2, SEWhite100BRPND2, SDWhite100BRPND2, AllWhite100BRPND2, MetaWhite100BRPND2]=AvgERGTraceByTrait(E, 'w', 'BRP', 100, 2);
[AvgWhite100BRPND1_5, SEWhite100BRPND1_5, SDWhite100BRPND1_5, AllWhite100BRPND1_5, MetaWhite100BRPND1_5]=AvgERGTraceByTrait(E, 'w', 'BRP', 100, 1.5);
[AvgWhite100BRPND1, SEWhite100BRPND1, SDWhite100BRPND1, AllWhite100BRPND1, MetaWhite100BRPND1]=AvgERGTraceByTrait(E, 'w', 'BRP', 100, 1);
[AvgWhite100BRPND_5, SEWhite100BRPND_5, SDWhite100BRPND_5, AllWhite100BRPND_5, MetaWhite100BRPND_5]=AvgERGTraceByTrait(E, 'w', 'BRP', 100, .5);

[AvgWhite100DKOND5, SEWhite100DKOND5, SDWhite100DKOND5, AllWhite100DKOND5, MetaWhite100DKOND5]=AvgERGTraceByTrait(E, 'w', 'DKO', 100, 5);
[AvgWhite100DKOND4, SEWhite100DKOND4, SDWhite100DKOND4, AllWhite100DKOND4, MetaWhite100DKOND4]=AvgERGTraceByTrait(E, 'w', 'DKO', 100, 4);
[AvgWhite100DKOND3, SEWhite100DKOND3, SDWhite100DKOND3, AllWhite100DKOND3, MetaWhite100DKOND3]=AvgERGTraceByTrait(E, 'w', 'DKO', 100, 3);
[AvgWhite100DKOND2, SEWhite100DKOND2, SDWhite100DKOND2, AllWhite100DKOND2, MetaWhite100DKOND2]=AvgERGTraceByTrait(E, 'w', 'DKO', 100, 2);
[AvgWhite100DKOND1_5, SEWhite100DKOND1_5, SDWhite100DKOND1_5, AllWhite100DKOND1_5, MetaWhite100DKOND1_5]=AvgERGTraceByTrait(E, 'w', 'DKO', 100, 1.5);
[AvgWhite100DKOND1, SEWhite100DKOND1, SDWhite100DKOND1, AllWhite100DKOND1, MetaWhite100DKOND1]=AvgERGTraceByTrait(E, 'w', 'DKO', 100, 1);
[AvgWhite100DKOND_5, SEWhite100DKOND_5, SDWhite100DKOND_5, AllWhite100DKOND_5, MetaWhite100DKOND_5]=AvgERGTraceByTrait(E, 'w', 'DKO', 100, .5);


%% PR Misexpression
[AvgDIPYControl, SEDIPYControl, SDDIPYControl, AllDIPYControl, MetaDIPYControl]=AvgERGTraceByTrait(E, 'w', 'DIPY Control', 100, 0);
[AvgPRControl, SEPRControl, SDPRControl, AllPRControl, MetaPRControl]=AvgERGTraceByTrait(E, 'w', 'PR Control', 100, 0);
[AvgPRDIPY, SEPRDIPY, SDPRDIPY, AllPRDIPY, MetaPRDIPY]=AvgERGTraceByTrait(E, 'w', 'PRDIPY', 100, 0);

[AvgPRControlND5, SEPRControlND5, SDPRControlND5, AllPRControlND5, MetaPRControlND5]=AvgERGTraceByTrait(E, 'w', 'PR Control', 100, 5);
[AvgPRControlND4, SEPRControlND4, SDPRControlND4, AllPRControlND4, MetaPRControlND4]=AvgERGTraceByTrait(E, 'w', 'PR Control', 100, 4);
[AvgPRControlND3, SEPRControlND3, SDPRControlND3, AllPRControlND3, MetaPRControlND3]=AvgERGTraceByTrait(E, 'w', 'PR Control', 100, 3);
[AvgPRControlND2, SEPRControlND2, SDPRControlND2, AllPRControlND2, MetaPRControlND2]=AvgERGTraceByTrait(E, 'w', 'PR Control', 100, 2);
[AvgPRControlND1, SEPRControlND1, SDPRControlND1, AllPRControlND1, MetaPRControlND1]=AvgERGTraceByTrait(E, 'w', 'PR Control', 100, 1);

[AvgDIPYControlND5, SEDIPYControlND5, SDDIPYControlND5, AllDIPYControlND5, MetaDIPYControlND5]=AvgERGTraceByTrait(E, 'w', 'DIPY Control', 100, 5);
[AvgDIPYControlND4, SEDIPYControlND4, SDDIPYControlND4, AllDIPYControlND4, MetaDIPYControlND4]=AvgERGTraceByTrait(E, 'w', 'DIPY Control', 100, 4);
[AvgDIPYControlND3, SEDIPYControlND3, SDDIPYControlND3, AllDIPYControlND3, MetaDIPYControlND3]=AvgERGTraceByTrait(E, 'w', 'DIPY Control', 100, 3);
[AvgDIPYControlND2, SEDIPYControlND2, SDDIPYControlND2, AllDIPYControlND2, MetaDIPYControlND2]=AvgERGTraceByTrait(E, 'w', 'DIPY Control', 100, 2);
[AvgDIPYControlND1, SEDIPYControlND1, SDDIPYControlND1, AllDIPYControlND1, MetaDIPYControlND1]=AvgERGTraceByTrait(E, 'w', 'DIPY Control', 100, 1);

[AvgPRDIPYND5, SEPRDIPYND5, SDPRDIPYND5, AllPRDIPYND5, MetaPRDIPYND5]=AvgERGTraceByTrait(E, 'w', 'PRDIPY', 100, 5);
[AvgPRDIPYND4, SEPRDIPYND4, SDPRDIPYND4, AllPRDIPYND4, MetaPRDIPYND4]=AvgERGTraceByTrait(E, 'w', 'PRDIPY', 100, 4);
[AvgPRDIPYND3, SEPRDIPYND3, SDPRDIPYND3, AllPRDIPYND3, MetaPRDIPYND3]=AvgERGTraceByTrait(E, 'w', 'PRDIPY', 100, 3);
[AvgPRDIPYND2, SEPRDIPYND2, SDPRDIPYND2, AllPRDIPYND2, MetaPRDIPYND2]=AvgERGTraceByTrait(E, 'w', 'PRDIPY', 100, 2);
[AvgPRDIPYND1, SEPRDIPYND1, SDPRDIPYND1, AllPRDIPYND1, MetaPRDIPYND1]=AvgERGTraceByTrait(E, 'w', 'PRDIPY', 100, 1);

%% White CKO vs Gal4
[AvgWhite100CKO, SEWhite100CKO, SDWhite100CKO, AllWhite100CKO, MetaWhite100CKO]=AvgERGTraceByTrait(E, 'w', 'CKO', 100, 0);
[AvgWhite100Gal4, SEWhite100Gal4, SDWhite100Gal4, AllWhite100Gal4, MetaWhite100Gal4]=AvgERGTraceByTrait(E, 'w', 'Gal4', 100, 0);

[AvgWhite100Gal4ND5, SEWhite100Gal4ND5, SDWhite100Gal4ND5, AllWhite100Gal4ND5, MetaWhite100Gal4ND5]=AvgERGTraceByTrait(E, 'w', 'Gal4', 100, 5);
[AvgWhite100Gal4ND4, SEWhite100Gal4ND4, SDWhite100Gal4ND4, AllWhite100Gal4ND4, MetaWhite100Gal4ND4]=AvgERGTraceByTrait(E, 'w', 'Gal4', 100, 4);
[AvgWhite100Gal4ND3, SEWhite100Gal4ND3, SDWhite100Gal4ND3, AllWhite100Gal4ND3, MetaWhite100Gal4ND3]=AvgERGTraceByTrait(E, 'w', 'Gal4', 100, 3);
[AvgWhite100Gal4ND2, SEWhite100Gal4ND2, SDWhite100Gal4ND2, AllWhite100Gal4ND2, MetaWhite100Gal4ND2]=AvgERGTraceByTrait(E, 'w', 'Gal4', 100, 2);
[AvgWhite100Gal4ND1, SEWhite100Gal4ND1, SDWhite100Gal4ND1, AllWhite100Gal4ND1, MetaWhite100Gal4ND1]=AvgERGTraceByTrait(E, 'w', 'Gal4', 100, 1);

[AvgWhite100CKOND5, SEWhite100CKOND5, SDWhite100CKOND5, AllWhite100CKOND5, MetaWhite100CKOND5]=AvgERGTraceByTrait(E, 'w', 'CKO', 100, 5);
[AvgWhite100CKOND4, SEWhite100CKOND4, SDWhite100CKOND4, AllWhite100CKOND4, MetaWhite100CKOND4]=AvgERGTraceByTrait(E, 'w', 'CKO', 100, 4);
[AvgWhite100CKOND3, SEWhite100CKOND3, SDWhite100CKOND3, AllWhite100CKOND3, MetaWhite100CKOND3]=AvgERGTraceByTrait(E, 'w', 'CKO', 100, 3);
[AvgWhite100CKOND2, SEWhite100CKOND2, SDWhite100CKOND2, AllWhite100CKOND2, MetaWhite100CKOND2]=AvgERGTraceByTrait(E, 'w', 'CKO', 100, 2);
[AvgWhite100CKOND1, SEWhite100CKOND1, SDWhite100CKOND1, AllWhite100CKOND1, MetaWhite100CKOND1]=AvgERGTraceByTrait(E, 'w', 'CKO', 100, 1);



%%
toc
%
% AvgOrange10DKO=AvgERGTraceByTrait(E, 'o', 'DKO', 10, 0);
% AvgOrange10BRP=AvgERGTraceByTrait(E, 'o', 'BRP', 10, 0);
[AvgOrange100DKO, SEOrange100DKO, SDOrange100DKO, AllOrange100DKO]=AvgERGTraceByTrait(E, 'o', 'DKO', 100, 0);
[AvgOrange100BRP, SEOrange100BRP, SDOrange100BRP, AllOrange100BRP]=AvgERGTraceByTrait(E, 'o', 'BRP', 100, 0);

[AvgOrange100BRPND3, SEOrange100BRPND3, SDOrange100BRPND3, AllOrange100BRPND3]=AvgERGTraceByTrait(E, 'o', 'BRP', 100, 3);
[AvgOrange100BRPND2, SEOrange100BRPND2, SDOrange100BRPND2, AllOrange100BRPND2]=AvgERGTraceByTrait(E, 'o', 'BRP', 100, 2);
[AvgOrange100BRPND1, SEOrange100BRPND1, SDOrange100BRPND1, AllOrange100BRPND1]=AvgERGTraceByTrait(E, 'o', 'BRP', 100, 1);

[AvgOrange100DKOND3, SEOrange100DKOND3, SDOrange100DKOND3, AllOrange100DKOND3]=AvgERGTraceByTrait(E, 'o', 'DKO', 100, 3);
[AvgOrange100DKOND2, SEOrange100DKOND2, SDOrange100DKOND2, AllOrange100DKOND2]=AvgERGTraceByTrait(E, 'o', 'DKO', 100, 2);
[AvgOrange100DKOND1, SEOrange100DKOND1, SDOrange100DKOND1, AllOrange100DKOND1]=AvgERGTraceByTrait(E, 'o', 'DKO', 100, 1);
toc
%%
figure(2)
clf
cm1=autumn;
cm1=[0:1/64:1; 0:1/64:1; 0:1/64:1];
cm1=cm1';
cm2=winter;
ci=5;
hold on
shadedErrorBar(t,  AvgWhite100DKO, SEWhite100DKO, 'lineProps', {'r-', 'color', cm1(ci,:), 'DisplayName', 'DKO - ND 0', 'LineWidth',  lw});

shadedErrorBar(t,  AvgWhite100BRP, SEWhite100BRP, 'lineProps', {'r-', 'color', cm2(ci,:)});

hold off

%%
%%
figure(2)
clf
cm1=autumn;
cm1=[0:1/64:1; 0:1/64:1; 0:1/64:1];
cm1=cm1';
cm2=winter;
ci=5;
hold on
shadedErrorBar(t,  AvgWhite100CKO, SEWhite100CKO, 'lineProps', {'r-', 'color', cm1(ci,:), 'DisplayName', 'CKO - ND 0', 'LineWidth',  lw});

shadedErrorBar(t,  AvgWhite100GAL4, SEWhite100GAL4, 'lineProps', {'r-', 'color', cm2(ci,:)});

hold off

%%
lw=.5;
figure(1)
yscalefactor=1000;
t=1:length(AvgWhite100DKO);
t=t*10/length(AvgWhite100DKO);
t=t-1.25;

clf
cm1=jet;
% colormapeditor
% cm1=[0:1/64:1; 0:1/64:1; 0:1/64:1];
% cm1=cm1/2+.25;
% cm1(2:3,:)=0;
% cm1=cm1';
cm2=jet/2;
% cm2=[0:1/64:1; 0:1/64:1; 0:1/64:1];
% cm2=cm2/2+.25;
% cm2(1:2,:)=0;
% cm2=cm2';
hold on


ciinc=8;
ci=12;
shadedErrorBar(t,  AvgWhite100DKO.*yscalefactor, SEWhite100DKO.*yscalefactor, 'lineProps', {'color', cm1(ci, :),  'DisplayName', 'DKO - ND 0', 'LineWidth',  lw});
shadedErrorBar(t,  AvgWhite100BRP.*yscalefactor, SEWhite100BRP.*yscalefactor, 'lineProps', { '--', 'color', cm2(ci, :), 'DisplayName','BRP - ND 0', 'LineWidth',  lw});

% ci=ci+ciinc;
% shadedErrorBar(t, AvgWhite100DKOND_5.*yscalefactor, SEWhite100DKOND_5.*yscalefactor, 'lineProps', { 'color', cm1(ci, :), 'DisplayName','DKO - White ND0.5', 'LineWidth',  lw});
% shadedErrorBar(t,  AvgWhite100BRPND_5.*yscalefactor, SEWhite100BRPND_5.*yscalefactor, 'lineProps', { '--', 'color', cm2(ci, :), 'DisplayName','BRP - White ND0.5', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgWhite100DKOND1.*yscalefactor, SEWhite100DKOND1.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','DKO - White ND1', 'LineWidth',  lw});
shadedErrorBar(t,  AvgWhite100BRPND1.*yscalefactor, SEWhite100BRPND1.*yscalefactor, 'lineProps', {'--','color', cm2(ci, :), 'DisplayName','BRP - White ND1', 'LineWidth',  lw});
% 
% ci=ci+ciinc;
% shadedErrorBar(t, AvgWhite100DKOND1_5.*yscalefactor, SEWhite100DKOND1_5.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','DKO - White ND1.5', 'LineWidth',  lw});
% shadedErrorBar(t,  AvgWhite100BRPND1_5.*yscalefactor, SEWhite100BRPND1_5.*yscalefactor, 'lineProps', {'--','color', cm2(ci, :), 'DisplayName','BRP - White ND1.5', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgWhite100DKOND2.*yscalefactor, SEWhite100DKOND2.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','DKO - White ND2', 'LineWidth',  lw});
shadedErrorBar(t,  AvgWhite100BRPND2.*yscalefactor, SEWhite100BRPND2.*yscalefactor, 'lineProps', {'--','color', cm2(ci, :), 'DisplayName','BRP - White ND2', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgWhite100DKOND3.*yscalefactor, SEWhite100DKOND3.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','DKO - White ND3', 'LineWidth',  lw});
shadedErrorBar(t,  AvgWhite100BRPND3.*yscalefactor, SEWhite100BRPND3.*yscalefactor, 'lineProps', { '--','color', cm2(ci, :), 'DisplayName','BRP - White ND3', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgWhite100DKOND4.*yscalefactor, SEWhite100DKOND4.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','DKO - White ND4', 'LineWidth',  lw});
shadedErrorBar(t,  AvgWhite100BRPND4.*yscalefactor, SEWhite100BRPND4.*yscalefactor, 'lineProps', {'--','color', cm2(ci, :), 'DisplayName','BRP - White ND4', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgWhite100DKOND5.*yscalefactor, SEWhite100DKOND5.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','DKO - White ND5', 'LineWidth',  lw});
shadedErrorBar(t,  AvgWhite100BRPND5.*yscalefactor, SEWhite100BRPND5.*yscalefactor, 'lineProps', { '--', 'color', cm2(ci, :), 'DisplayName','BRP - White ND5', 'LineWidth',  lw});
hold off

% legend()
xlabel('Time (s)')
% ylabel('Voltage (mV)')
% title('DKO vs BRP responses to light at different intensities')
%%
%%
lw=.5;
figure(5)
yscalefactor=1000;
t=1:length(AvgWhite100CKO);
t=t*10/length(AvgWhite100CKO);
t=t-1.25;

clf
cm1=jet;
% colormapeditor
% cm1=[0:1/64:1; 0:1/64:1; 0:1/64:1];
% cm1=cm1/2+.25;
% cm1(2:3,:)=0;
% cm1=cm1';
cm2=jet/2;
% cm2=[0:1/64:1; 0:1/64:1; 0:1/64:1];
% cm2=cm2/2+.25;
% cm2(1:2,:)=0;
% cm2=cm2';
hold on


ciinc=8;
ci=12;
shadedErrorBar(t,  AvgWhite100CKO.*yscalefactor, SEWhite100CKO.*yscalefactor, 'lineProps', {'color', cm1(ci, :),  'DisplayName', 'CKO - ND 0', 'LineWidth',  lw});
shadedErrorBar(t,  AvgWhite100Gal4.*yscalefactor, SEWhite100Gal4.*yscalefactor, 'lineProps', { '--', 'color', cm2(ci, :), 'DisplayName','Gal4 - ND 0', 'LineWidth',  lw});

% ci=ci+ciinc;
% shadedErrorBar(t, AvgWhite100CKOND_5.*yscalefactor, SEWhite100CKOND_5.*yscalefactor, 'lineProps', { 'color', cm1(ci, :), 'DisplayName','CKO - White ND0.5', 'LineWidth',  lw});
% shadedErrorBar(t,  AvgWhite100Gal4ND_5.*yscalefactor, SEWhite100Gal4ND_5.*yscalefactor, 'lineProps', { '--', 'color', cm2(ci, :), 'DisplayName','Gal4 - White ND0.5', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgWhite100CKOND1.*yscalefactor, SEWhite100CKOND1.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','CKO - White ND1', 'LineWidth',  lw});
shadedErrorBar(t,  AvgWhite100Gal4ND1.*yscalefactor, SEWhite100Gal4ND1.*yscalefactor, 'lineProps', {'--','color', cm2(ci, :), 'DisplayName','Gal4 - White ND1', 'LineWidth',  lw});
% 
% ci=ci+ciinc;
% shadedErrorBar(t, AvgWhite100CKOND1_5.*yscalefactor, SEWhite100CKOND1_5.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','CKO - White ND1.5', 'LineWidth',  lw});
% shadedErrorBar(t,  AvgWhite100Gal4ND1_5.*yscalefactor, SEWhite100Gal4ND1_5.*yscalefactor, 'lineProps', {'--','color', cm2(ci, :), 'DisplayName','Gal4 - White ND1.5', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgWhite100CKOND2.*yscalefactor, SEWhite100CKOND2.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','CKO - White ND2', 'LineWidth',  lw});
shadedErrorBar(t,  AvgWhite100Gal4ND2.*yscalefactor, SEWhite100Gal4ND2.*yscalefactor, 'lineProps', {'--','color', cm2(ci, :), 'DisplayName','Gal4 - White ND2', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgWhite100CKOND3.*yscalefactor, SEWhite100CKOND3.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','CKO - White ND3', 'LineWidth',  lw});
shadedErrorBar(t,  AvgWhite100Gal4ND3.*yscalefactor, SEWhite100Gal4ND3.*yscalefactor, 'lineProps', { '--','color', cm2(ci, :), 'DisplayName','Gal4 - White ND3', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgWhite100CKOND4.*yscalefactor, SEWhite100CKOND4.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','CKO - White ND4', 'LineWidth',  lw});
shadedErrorBar(t,  AvgWhite100Gal4ND4.*yscalefactor, SEWhite100Gal4ND4.*yscalefactor, 'lineProps', {'--','color', cm2(ci, :), 'DisplayName','Gal4 - White ND4', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgWhite100CKOND5.*yscalefactor, SEWhite100CKOND5.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','CKO - White ND5', 'LineWidth',  lw});
shadedErrorBar(t,  AvgWhite100Gal4ND5.*yscalefactor, SEWhite100Gal4ND5.*yscalefactor, 'lineProps', { '--', 'color', cm2(ci, :), 'DisplayName','Gal4 - White ND5', 'LineWidth',  lw});
hold off

% legend()
xlabel('Time (s)')
ylabel('Voltage (mV)')
title('CKO vs Gal4 responses to light at different intensities')

%%


xlim([1.255, 1.31]-1.25)
ylim([-.5, 3.5])
%%
ylim([-19, 0])
xlim([1.6, 1.85]-1.25)
%%
ylim([-19, 0])
xlim([1.88, 2]-1.25)
%%
plot(t,  AvgWhite100DKO,  'color', cm(ci, :),  'DisplayName', 'DKO - ND 0', 'LineWidth',  lw);

%% 
figure(3)
clf
% t=1:2000000;
% t=t*5.0000e-06;
t=1:length(AvgWhite100DKO);
t=t*10/length(AvgWhite100DKO);

lw=1;
hold on

cm=jet;
% plot(t, AvgBlue10DKO, 'c--', 'DisplayName','DKO - Blue 10%')
% 
% plot(t,  AvgBlue10BRP, 'b--', 'DisplayName','BRP - Blue 10%')
% toc
% plot(t,  AvgBlue100DKO, 'c', 'DisplayName','DKO - Blue 100%')
% plot(t,  AvgBlue100BRP, 'b', 'DisplayName','BRP - Blue 100%')
% % 
% 
% plot(t, AvgWhite10DKO, 'k--', 'DisplayName','DKO - White 10%')
% plot(t,  AvgWhite10BRP, 'g--', 'DisplayName','BRP - White 10%')
% plot(t,  AvgWhite100DKO, 'k', 'DisplayName','DKO - White 100%')
% plot(t,  AvgWhite100BRP, 'g', 'DisplayName','BRP - White 100%')

% plot(t, AvgWhite10DKO, 'k', 'DisplayName','DKO - White 10%')
% plot(t,  AvgWhite10BRP, 'k--', 'DisplayName','BRP - White 10%')
ci=1;

plot(t,  AvgWhite100DKO,  'color', cm(ci, :),  'DisplayName', 'DKO - ND 0', 'LineWidth',  lw);
plot(t,  AvgWhite100BRP,'--', 'color', cm(ci, :), 'DisplayName','BRP - ND 0', 'LineWidth',  lw);

ci=ci+9;
plot(t, AvgWhite100DKOND_5, 'color', cm(ci, :), 'DisplayName','DKO - White ND0.5', 'LineWidth',  lw);
plot(t,  AvgWhite100BRPND_5, '--', 'color', cm(ci, :), 'DisplayName','BRP - White ND0.5', 'LineWidth',  lw);

ci=ci+9;
plot(t, AvgWhite100DKOND1,'color', cm(ci, :), 'DisplayName','DKO - White ND1', 'LineWidth',  lw);
plot(t,  AvgWhite100BRPND1,'--','color', cm(ci, :), 'DisplayName','BRP - White ND1', 'LineWidth',  lw);

ci=ci+9;
plot(t, AvgWhite100DKOND1_5,'color', cm(ci, :), 'DisplayName','DKO - White ND1.5', 'LineWidth',  lw);
plot(t,  AvgWhite100BRPND1_5,'--','color', cm(ci, :), 'DisplayName','BRP - White ND1.5', 'LineWidth',  lw);

ci=ci+9;
plot(t, AvgWhite100DKOND2,'color', cm(ci, :), 'DisplayName','DKO - White ND2', 'LineWidth',  lw)
plot(t,  AvgWhite100BRPND2,'--','color', cm(ci, :), 'DisplayName','BRP - White ND2', 'LineWidth',  lw)

ci=ci+9;
plot(t, AvgWhite100DKOND3,'color', cm(ci, :), 'DisplayName','DKO - White ND3', 'LineWidth',  lw)
plot(t,  AvgWhite100BRPND3,'--','color', cm(ci, :), 'DisplayName','BRP - White ND3', 'LineWidth',  lw)

ci=ci+9;
plot(t, AvgWhite100DKOND4,'color', cm(ci, :), 'DisplayName','DKO - White ND4', 'LineWidth',  lw)
plot(t,  AvgWhite100BRPND4,'--','color', cm(ci, :), 'DisplayName','BRP - White ND4', 'LineWidth',  lw)

ci=ci+9;
plot(t, AvgWhite100DKOND5,'color', cm(ci, :), 'DisplayName','DKO - White ND5', 'LineWidth',  lw)
plot(t,  AvgWhite100BRPND5,'--', 'color', cm(ci, :), 'DisplayName','BRP - White ND5', 'LineWidth',  lw)
% plot(t, AvgOrange10DKO, 'r--', 'DisplayName','DKO - Orange 10%')
% plot(t,  AvgOrange10BRP, 'm--', 'DisplayName','BRP - Orange 10%')
% plot(t,  AvgOrange100DKO, 'r', 'DisplayName','DKO - Orange 100%')
% plot(t,  AvgOrange100BRP, 'm', 'DisplayName','BRP - Orange 100%')

legend()
% legend('Blue 10% DKO', 'Blue 10% BRP', 'Blue 100% DKO', 'Blue 100% BRP')
xlabel('Time (s)')
ylabel('Voltage (relative to start)')
title('DKO vs BRP responses to light at different intensities')
% plot(t, AvgBlue100DKO) 
% plot(t, AvgBlue100BRP)
%% Blue
figure(3)
lw=1; %Line width

cm=cool;
ci=1;
clf
hold on
% plot(t, AvgBlue10DKO, 'color', cm(ci, :), 'LineWidth',lw , 'DisplayName','DKO - Blue 10%')
% plot(t,  AvgBlue10BRP, '--','color', cm(ci, :), 'LineWidth',lw, 'DisplayName','BRP - Blue 10%')
plot(t, AvgBlue100DKO,  'color', cm(ci, :), 'LineWidth',lw, 'DisplayName','DKO - Blue ND0')
plot(t,  AvgBlue100BRP, '--',  'color', cm(ci, :),'LineWidth',lw, 'DisplayName','BRP - Blue ND0')

ci=ci+20;
plot(t, AvgBlue100DKOND1, 'color', cm(ci, :), 'LineWidth',lw, 'DisplayName','DKO - Blue ND1')
plot(t,  AvgBlue100BRPND1, '--',  'color', cm(ci, :), 'LineWidth',lw, 'DisplayName','BRP - Blue ND1')

ci=ci+20;
plot(t, AvgBlue100DKOND2, 'color', cm(ci, :), 'LineWidth',lw, 'DisplayName','DKO - Blue ND2')
plot(t,  AvgBlue100BRPND2, '--',  'color', cm(ci, :), 'LineWidth',lw, 'DisplayName','BRP - Blue ND2')

ci=ci+20;
plot(t, AvgBlue100DKOND3,  'color', cm(ci, :),'LineWidth',lw, 'DisplayName','DKO - Blue ND3')
plot(t,  AvgBlue100BRPND3, '--',  'color', cm(ci, :),'LineWidth',lw, 'DisplayName','BRP - Blue ND3')
legend()
% legend('Blue 10% DKO', 'Blue 10% BRP', 'Blue 100% DKO', 'Blue 100% BRP')
xlabel('Time (s)')
ylabel('Voltage (relative to start)')
title('DKO vs BRP responses to light at different intensities')

%%

figure(4)
lw=1; %Line width


cm=autumn;
ci=1;

clf
hold on
% plot(t, AvgOrange10DKO, 'm','LineWidth',lw , 'DisplayName','DKO - Orange 10%')
% plot(t,  AvgOrange10BRP, 'm--','LineWidth',lw, 'DisplayName','BRP - Orange 10%')
plot(t, AvgOrange100DKO,  'color', cm(ci, :), 'LineWidth',lw, 'DisplayName','DKO - Orange ND0')
plot(t,  AvgOrange100BRP, '--', 'color', cm(ci, :),'LineWidth',lw, 'DisplayName','BRP - Orange ND0')

ci=ci+20;
plot(t, AvgOrange100DKOND1,  'color', cm(ci, :), 'LineWidth',lw, 'DisplayName','DKO - Orange ND1')
plot(t,  AvgOrange100BRPND1, '--', 'color', cm(ci, :),'LineWidth',lw, 'DisplayName','BRP - Orange ND1')

ci=ci+20;
plot(t, AvgOrange100DKOND2,  'color', cm(ci, :),'LineWidth',lw, 'DisplayName','DKO - Orange ND2')
plot(t,  AvgOrange100BRPND2, '--', 'color', cm(ci, :), 'LineWidth',lw, 'DisplayName','BRP - Orange ND2')

ci=ci+20;
plot(t, AvgOrange100DKOND3,  'color', cm(ci, :),'LineWidth',lw, 'DisplayName','DKO - Orange ND3')
plot(t,  AvgOrange100BRPND3, '--', 'color', cm(ci, :), 'LineWidth',lw, 'DisplayName','BRP - Orange ND3')
legend()

xlabel('Time (s)')
ylabel('Voltage (relative to start)')
title('DKO vs BRP responses to light at different intensities')

%% Below moved to ERGLoad.m
% x=dir('/Users/ryanmaloney/Dropbox/Pecot/ERGs/ERG');
%
% number=2;
% trialnumber=3;
%
% numfiles=size(x);
% for i=1:numfiles
% 	filename=string(x(i).name);
% 	regexExp=['(F', num2str(flynumber), ').*(T', num2str(trialnumber), ').*(RecordWave)'];
% %     regexExp="(F2).*(T2).*(RecordWave)";
% %     disp(regexExp)
% 	if regexp(filename, regexExp)
%         disp(x(i).name);
%         matchfilename=x(i).name;
%     end
% end
%
% %%
%
% D=IBWread('/Users/ryanmaloney/Dropbox/Pecot/ERGs/ERG/2018-12-21_F2_T0_RecordWave.ibw');
% t=1:D.Nsam;
% t=t*D.dx;
% plot(t, D.y)
% %For each file, I want repeats, intensity, Color, genotype
%
% repeats=5;
% triallength=D.Nsam/repeats;
% avg2=zeros(1,triallength);
% facing=1:triallength;
%
% for i=1:repeats
%     disp(i)
%     offset=triallength*(i-1);
%     nextTrial=D.y(1+offset:triallength+offset);
%     whos
%     avg2=avg2+nextTrial';
% end
%
% plot(t(1:triallength), avg2)

%%

%%
lw=.5;
figure(5)
yscalefactor=1000;
t=1:length(AvgDIPYControl);
t=t*10/length(AvgDIPYControl);
t=t-1.25;

clf
cm1=jet;
% colormapeditor
% cm1=[0:1/64:1; 0:1/64:1; 0:1/64:1];
% cm1=cm1/2+.25;
% cm1(2:3,:)=0;
% cm1=cm1';
cm2=jet/2;
% cm2=[0:1/64:1; 0:1/64:1; 0:1/64:1];
% cm2=cm2/2+.25;
% cm2(1:2,:)=0;
% cm2=cm2';
hold on


ciinc=8;
ci=12;
shadedErrorBar(t,  AvgPRDIPY.*yscalefactor, SEPRDIPY.*yscalefactor, 'lineProps', {'color', cm1(ci, :),  'DisplayName', 'DIPY Mis - ND 0', 'LineWidth',  lw});
shadedErrorBar(t,  AvgDIPYControl.*yscalefactor, SEDIPYControl.*yscalefactor, 'lineProps', { '--', 'color', cm2(ci, :), 'DisplayName','DIPY Control - ND 0', 'LineWidth',  lw});

% ci=ci+ciinc;
% shadedErrorBar(t, AvgPRDIPYND_5.*yscalefactor, SEPRDIPYND_5.*yscalefactor, 'lineProps', { 'color', cm1(ci, :), 'DisplayName','DIPY Mis - White ND0.5', 'LineWidth',  lw});
% shadedErrorBar(t,  AvgDIPYControlND_5.*yscalefactor, SEDIPYControlND_5.*yscalefactor, 'lineProps', { '--', 'color', cm2(ci, :), 'DisplayName','DIPY Control - White ND0.5', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgPRDIPYND1.*yscalefactor, SEPRDIPYND1.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','DIPY Mis - White ND1', 'LineWidth',  lw});
shadedErrorBar(t,  AvgDIPYControlND1.*yscalefactor, SEDIPYControlND1.*yscalefactor, 'lineProps', {'--','color', cm2(ci, :), 'DisplayName','DIPY Control - White ND1', 'LineWidth',  lw});
% 
% ci=ci+ciinc;
% shadedErrorBar(t, AvgPRDIPYND1_5.*yscalefactor, SEPRDIPYND1_5.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','DIPY Mis - White ND1.5', 'LineWidth',  lw});
% shadedErrorBar(t,  AvgDIPYControlND1_5.*yscalefactor, SEDIPYControlND1_5.*yscalefactor, 'lineProps', {'--','color', cm2(ci, :), 'DisplayName','DIPY Control - White ND1.5', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgPRDIPYND2.*yscalefactor, SEPRDIPYND2.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','DIPY Mis - White ND2', 'LineWidth',  lw});
shadedErrorBar(t,  AvgDIPYControlND2.*yscalefactor, SEDIPYControlND2.*yscalefactor, 'lineProps', {'--','color', cm2(ci, :), 'DisplayName','DIPY Control - White ND2', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgPRDIPYND3.*yscalefactor, SEPRDIPYND3.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','DIPY Mis - White ND3', 'LineWidth',  lw});
shadedErrorBar(t,  AvgDIPYControlND3.*yscalefactor, SEDIPYControlND3.*yscalefactor, 'lineProps', { '--','color', cm2(ci, :), 'DisplayName','DIPY Control - White ND3', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgPRDIPYND4.*yscalefactor, SEPRDIPYND4.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','DIPY Mis - White ND4', 'LineWidth',  lw});
shadedErrorBar(t,  AvgDIPYControlND4.*yscalefactor, SEDIPYControlND4.*yscalefactor, 'lineProps', {'--','color', cm2(ci, :), 'DisplayName','DIPY Control - White ND4', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgPRDIPYND5.*yscalefactor, SEPRDIPYND5.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','DIPY Mis - White ND5', 'LineWidth',  lw});
shadedErrorBar(t,  AvgDIPYControlND5.*yscalefactor, SEDIPYControlND5.*yscalefactor, 'lineProps', { '--', 'color', cm2(ci, :), 'DisplayName','DIPY Control - White ND5', 'LineWidth',  lw});
hold off

 legend()
xlabel('Time (s)')
ylabel('Voltage (mV)')
title('DIPY Mis vs DIPY Control responses to light at different intensities')

%%

lw=.5;
figure(6)
yscalefactor=1000;
t=1:length(AvgPRControl);
t=t*10/length(AvgPRControl);
t=t-1.25;

clf
cm1=jet;
% colormapeditor
% cm1=[0:1/64:1; 0:1/64:1; 0:1/64:1];
% cm1=cm1/2+.25;
% cm1(2:3,:)=0;
% cm1=cm1';
cm2=jet/2;
% cm2=[0:1/64:1; 0:1/64:1; 0:1/64:1];
% cm2=cm2/2+.25;
% cm2(1:2,:)=0;
% cm2=cm2';
hold on


ciinc=8;
ci=12;
shadedErrorBar(t,  AvgPRDIPY.*yscalefactor, SEPRDIPY.*yscalefactor, 'lineProps', {'color', cm1(ci, :),  'DisplayName', 'DIPY Mis - ND 0', 'LineWidth',  lw});
shadedErrorBar(t,  AvgPRControl.*yscalefactor, SEPRControl.*yscalefactor, 'lineProps', { '--', 'color', cm2(ci, :), 'DisplayName','PR Control - ND 0', 'LineWidth',  lw});

% ci=ci+ciinc;
% shadedErrorBar(t, AvgPRDIPYND_5.*yscalefactor, SEPRDIPYND_5.*yscalefactor, 'lineProps', { 'color', cm1(ci, :), 'DisplayName','DIPY Mis - White ND0.5', 'LineWidth',  lw});
% shadedErrorBar(t,  AvgPRControlND_5.*yscalefactor, SEPRControlND_5.*yscalefactor, 'lineProps', { '--', 'color', cm2(ci, :), 'DisplayName','PR Control - White ND0.5', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgPRDIPYND1.*yscalefactor, SEPRDIPYND1.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','DIPY Mis - White ND1', 'LineWidth',  lw});
shadedErrorBar(t,  AvgPRControlND1.*yscalefactor, SEPRControlND1.*yscalefactor, 'lineProps', {'--','color', cm2(ci, :), 'DisplayName','PR Control - White ND1', 'LineWidth',  lw});
% 
% ci=ci+ciinc;
% shadedErrorBar(t, AvgPRDIPYND1_5.*yscalefactor, SEPRDIPYND1_5.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','DIPY Mis - White ND1.5', 'LineWidth',  lw});
% shadedErrorBar(t,  AvgPRControlND1_5.*yscalefactor, SEPRControlND1_5.*yscalefactor, 'lineProps', {'--','color', cm2(ci, :), 'DisplayName','PR Control - White ND1.5', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgPRDIPYND2.*yscalefactor, SEPRDIPYND2.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','DIPY Mis - White ND2', 'LineWidth',  lw});
shadedErrorBar(t,  AvgPRControlND2.*yscalefactor, SEPRControlND2.*yscalefactor, 'lineProps', {'--','color', cm2(ci, :), 'DisplayName','PR Control - White ND2', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgPRDIPYND3.*yscalefactor, SEPRDIPYND3.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','DIPY Mis - White ND3', 'LineWidth',  lw});
shadedErrorBar(t,  AvgPRControlND3.*yscalefactor, SEPRControlND3.*yscalefactor, 'lineProps', { '--','color', cm2(ci, :), 'DisplayName','PR Control - White ND3', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgPRDIPYND4.*yscalefactor, SEPRDIPYND4.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','DIPY Mis - White ND4', 'LineWidth',  lw});
shadedErrorBar(t,  AvgPRControlND4.*yscalefactor, SEPRControlND4.*yscalefactor, 'lineProps', {'--','color', cm2(ci, :), 'DisplayName','PR Control - White ND4', 'LineWidth',  lw});

ci=ci+ciinc;
shadedErrorBar(t, AvgPRDIPYND5.*yscalefactor, SEPRDIPYND5.*yscalefactor, 'lineProps', {'color', cm1(ci, :), 'DisplayName','DIPY Mis - White ND5', 'LineWidth',  lw});
shadedErrorBar(t,  AvgPRControlND5.*yscalefactor, SEPRControlND5.*yscalefactor, 'lineProps', { '--', 'color', cm2(ci, :), 'DisplayName','PR Control - White ND5', 'LineWidth',  lw});
hold off

 legend()
xlabel('Time (s)')
ylabel('Voltage (mV)')
title('DIPY Mis vs PR Control responses to light at different intensities')


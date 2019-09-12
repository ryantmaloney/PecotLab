% MakeERGStruct


E=struct([]);

for i=1:106
E(i).keep='y'; %Default to yes
end

for i=1:31
E(i).date='2018-12-21';
% E(i).keep='y'; %Default to yes
E(i).ND=0;
end

%Fly 2: BRP
for i=1:9
E(i).fly=2;
E(i).genotype='BRP';
end

E(1).trial=0;
E(1).intensity=10;
E(1).color='w';

E(2).trial=1;
E(2).intensity=100;
E(2).color='w';

E(3).trial=2;
E(3).intensity=10;
E(3).color='b';

E(4).trial=3;
E(4).intensity=100;
E(4).color='b';

E(5).trial=4;
E(5).intensity=100;
E(5).color='o';
E(5).keep='n'; %Could possibly artificially change gain to get fly back


E(6).trial=5;
E(6).intensity=100;
E(6).color='o';

E(7).trial=6;
E(7).intensity=10;
E(7).color='o';

E(8).trial=7;
E(8).intensity=100;
E(8).color='b';

E(9).trial=8;
E(9).intensity=100;
E(9).color='o';

%Fly 3
for i=10:17
E(i).fly=3;
E(i).genotype='DKO';
end

E(10).trial=9;
E(10).intensity=10;
E(10).color='w';
E(10).keep='n';

E(11).trial=10;
E(11).intensity=10;
E(11).color='w';

E(12).trial=11;
E(12).intensity=100;
E(12).color='w';

E(13).trial=12;
E(13).intensity=10;
E(13).color='b';

E(14).trial=13;
E(14).intensity=100;
E(14).color='b';

E(15).trial=14;
E(15).intensity=10;
E(15).color='o';

E(16).trial=15;
E(16).intensity=100;
E(16).color='b';

E(17).trial=16;
E(17).intensity=10;
E(17).color='o';

for i=18:24
    E(i).fly=4;
    E(i).genotype='BRP';
end

trial=17;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='w';

trial=18;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='b';

trial=19;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='b';

trial=20;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='b';

trial=21;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='o';

trial=22;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='b';

trial=23;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='b';
E(trial+1).keep='n';

for i=25:31
E(i).fly=5;
E(i).genotype='DKO';
end

trial=24;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='w';

trial=25;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';

trial=26;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='b';

trial=27;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='b';

trial=28;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='o';

trial=29;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='o';

trial=30;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='o';

for i=32:46
E(i).fly=6;
E(i).genotype='DKO';
end

trial=31;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='o';
E(trial+1).ND=0;

trial=32;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='o';
E(trial+1).ND=1;

trial=33;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=4;

trial=34;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=3;

trial=35;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='w';
E(trial+1).ND=3;

trial=36;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=1;

trial=37;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=0;

trial=38;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='o';
E(trial+1).ND=3;

trial=39;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='o';
E(trial+1).ND=1;

trial=40;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='o';
E(trial+1).ND=3;

trial=41;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='o';
E(trial+1).ND=0;

trial=42;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='b';
E(trial+1).ND=3;

trial=43;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='b';
E(trial+1).ND=1;

trial=44;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='b';
E(trial+1).ND=0;

trial=45;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='b';
E(trial+1).ND=0;

for i=47:59
E(i).fly=7;
E(i).genotype='BRP';
end

trial=46;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=4;

trial=47;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=3;

trial=48;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=1;

trial=49;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='w';
E(trial+1).ND=0;

trial=50;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=0;

trial=51;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='o';
E(trial+1).ND=3;
E(trial+1).keep='y';

trial=52;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='o';
E(trial+1).ND=3;

trial=53;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='o';
E(trial+1).ND=1;

trial=54;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='o';
E(trial+1).ND=0;

trial=55;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='b';
E(trial+1).ND=3;

trial=56;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='b';
E(trial+1).ND=1;

trial=57;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='b';
E(trial+1).ND=0;

trial=58;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='b';
E(trial+1).ND=0;

for i=60:72
E(i).fly=8;
E(i).genotype='DKO';
end

trial=59;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=4;

trial=60;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=3;

trial=61;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='w';
E(trial+1).ND=0;

trial=62;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=1;

trial=63;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=0;

trial=64;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='o';
E(trial+1).ND=3;

trial=65;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='o';
E(trial+1).ND=1;

trial=66;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='o';
E(trial+1).ND=0;

trial=67;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='o';
E(trial+1).ND=0;

trial=68;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='b';
E(trial+1).ND=3;

trial=69;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='b';
E(trial+1).ND=1;

trial=70;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='b';
E(trial+1).ND=0;

trial=71;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='b';
E(trial+1).ND=0;

for i=73:83
E(i).fly=9;
E(i).genotype='BRP';
end

trial=72;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=4;

trial=73;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=3;

trial=74;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=1;

trial=75;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='w';
E(trial+1).ND=0;

trial=76;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=0;

trial=77;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='o';
E(trial+1).ND=3;

trial=78;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='o';
E(trial+1).ND=1;

trial=79;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='o';
E(trial+1).ND=0;

trial=80;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='b';
E(trial+1).ND=3;

trial=81;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='b';
E(trial+1).ND=1;

trial=82;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='b';
E(trial+1).ND=0;

for i=84:94
E(i).fly=10;
E(i).genotype='DKO';
end

trial=83;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=4;

trial=84;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=3;

trial=85;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=1;

trial=86;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='w';
E(trial+1).ND=0;

trial=87;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=0;

trial=88;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='o';
E(trial+1).ND=3;

trial=89;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='o';
E(trial+1).ND=1;

trial=90;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='o';
E(trial+1).ND=0;

trial=91;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='b';
E(trial+1).ND=3;

trial=92;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='b';
E(trial+1).ND=1;

trial=93;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='b';
E(trial+1).ND=1;

for i=95:106
E(i).fly=11;
E(i).genotype='BRP';
end

trial=94;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=4;
E(trial+1).keep='n';

trial=95;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=4;

trial=96;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=3;

trial=97;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=1;

trial=98;
E(trial+1).trial=trial;
E(trial+1).intensity=10;
E(trial+1).color='w';
E(trial+1).ND=0;

trial=99;
E(trial+1).trial=trial;
E(trial+1).intensity=100;
E(trial+1).color='w';
E(trial+1).ND=0;
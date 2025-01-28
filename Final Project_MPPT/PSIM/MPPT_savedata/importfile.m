clc; clear; close all;

%% DV1
% file_DV1 = 'Drift_PnO.csv';
file_DV1 = 'excelDV1.csv';
DV1 = xlsread(file_DV1);
t1 = DV1(:,1);
vsa1 = DV1(:,2);
Isa1 = DV1(:,3);
Vpmax = DV1(:,4);
Dp = DV1(:,7);
% dv = DV1(:,8);
% Df = DV1(:,9);
%% DV3
file_DV3 = 'excelDV3.csv';
DV3 = xlsread(file_DV3);
t3 = DV3(:,1);
vsa3 = DV3(:,2);
Isa3 = DV3(:,3);
%% DV5
file_DV5 = 'excelDV5.csv';
DV5 = xlsread(file_DV5);
t5 = DV5(:,1);
vsa5 = DV5(:,2);
Isa5 = DV5(:,3);
%% DV7
file_DV7 = 'excelDV7.csv';
DV7 = xlsread(file_DV7);
t7 = DV7(:,1);
vsa7 = DV7(:,2);
Isa7 = DV7(:,3);
%% DV10
file_DV10 = 'excelDV10.csv';
DV10 = xlsread(file_DV10);
t10 = DV10(:,1);
vsa10 = DV10(:,2);
Isa10 = DV10(:,3);

%% my algorism
% % isave = zeros(1, 100);
% % datasave = zeros(1, 100);
% % k=1;
% % for i=1:30599
% %     if(abs((Dp(i+1)-Dp(i))/1)<0.00000001)
% %         isave(k) = i;
% %         datasave(k) = 1.725*vsa1(i);
% %         k=k+1;
% %     end
% % end
% % for i=1927:2254
% %     vsa1(i)=datasave(1);
% % end


psa1 = vsa1.*Isa1;
%% ploting VPmax
plot(t1, Vpmax, 'r-','LineWidth',2);
hold on;
%% ploting DV1
plot(t1, psa1, 'g-');
hold on;
%% ploting Dp
% plot(t1, Dp, 'g-');
% hold on;
% xlabel('Time');
% ylabel('Solar irradiance')
% title('0101 Dp Analysis')
% legend('Vpmax', 'Psa', 'Dp');
%% calculate sum error
psa3 = vsa3 .* Isa3;
sumE_V1=sum(Vpmax-psa3);

%% ploting DV3
plot(t3, vsa3.*Isa3, 'b-');
hold on;
%% ploting DV5
% plot(t5, vsa5.*Isa5, 'c-');
% hold on;
%% ploting DV7
% plot(t7, vsa7.*Isa7, 'm-');
% hold on;
%% ploting DV10
% plot(t10, vsa10.*Isa10, 'y-');
% hold on;
%%
xlabel('Time');
ylabel('Solar irradiance')
title('0101 DV = ?')
% legend( 'Vpmax', 'DV=1', 'DV=3', 'DV=5','DV=7', 'DV=10');



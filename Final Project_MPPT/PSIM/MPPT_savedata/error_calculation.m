clear; clc; close all
% Time	Pmax Vsa Isa Duty Verr Vref V10 V12
% column name
V1=readtable('0.0001_0.0001_0.0001_0316.xlsx');
% V1=readtable('DV1.xlsx');

%% data converting to double
V1=table2array(V1);

%% 
time1=V1(:,1); 
Pmax_V1=V1(:,4);
Vsa_V1=V1(:,2);
Isa_V1=V1(:,3);
% Po_V1=Vsa_V1.*Isa_V1;
Po_V1=Vsa_V1.*Isa_V1;

%% calculate sum error

sumE_V1=sum(Pmax_V1-Po_V1);

%% plot data in matlab(test)

plot(time1,Pmax_V1,'-o',time1,Po_V1,'--.')
title('Power generation of Solar module, date: 01M 01D')
xlabel('Time[s]')
ylabel('Power[W]')
legend('Measured Pmax', 'Estimated Pmax')
disp('Error = ');
disp(sumE_V1);
grid on

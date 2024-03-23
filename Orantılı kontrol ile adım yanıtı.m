clc;
clearvars

J = 0.02;
b = 0.1;
K = 0.02;
R = 2;
L = 0.5;
% Td = -0.5;
s=tf('s');
% numz1=[L,R];
% denz1=(K);
% z=tf(numz1,denz1);
% f=Td*z;
Kp=1000;
Ki=0;
Kd=100;
C=pid(Kp,Ki,Kd);
% numin1=[f,1];
% denin2=[1];
% in=tf(numin1,denin2);
P_motor=K/((J*s+b)*(L*s+R)+K^2);
sys_c1=feedback(C*P_motor,1);
t=0:0.0025:1;
step(sys_c1,t); grid;
title('Orantılı Kontrol ile Adım Yanıtı')
% 

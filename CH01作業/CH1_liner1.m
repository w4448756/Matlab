%�t�Ϊ�l�ơA����]���e�{���үd�U���Ȧs�Ӳ��ͻ~�t
clear all;close all;
%�n�ˬd�u�ʨt�ΡA�G�ϥέ��|��z
%���Υ��N2�տ�J(x1�Bx2)����2�դ��P����X(y1�By2)
t=-50:50; %���ͮɶ��}�C�A���j��1�A�@101��
x1=3*t.^2;
y1=t.*x1;
figure(1)
subplot(211)
plot(t,y1,'g*-');
xlabel('Time, t');
ylabel('y1(t)');
title({['3A412134 ���q�y'];'y(t)=tx(t)';['y1(t)']});

x2=10*t;  
y2=t.*x2;
subplot(212)
plot(t,y2,'b*-')
xlabel('Time, t')
ylabel('y2(t)')
title('y2(t)');

%����N2�տ�J���u�ʲզX���ͷs����J(x3)�A�A��^�t�β��ͤ@�տ�X(y3)
%�N2�խ��X�Ȥ]���u�ʲզX���ͥt�@�տ�X(y4)�A�̫��ˬdy3�By4�O�_�ۦP
a=-5;
b=12;
x3=a*x1+b*x2;
y3=t.*x3;

y4=a*y1+b*y2;

%�ϥ�plot�H��hold on���O�Ny3�By4���ϧ�ø�s��P�@�i�ϤW�H�Q�[��O�_���|
figure(2);
plot(t,y3,'r*-'); hold on;
plot(t,y4,'bs-')
xlabel('Time, t')
title({'3A412134 ���q�y';'y(t)=tx(t)';'y3(t) vs. y4(t)=a*y1(t)+b*y2(t)'});
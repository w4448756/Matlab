%�t�Ϊ�l�ơA����]���e�{���үd�U���Ȧs�Ӳ��ͻ~�t
clear all;close all;
%�ˬd�D���ܨt�ΡA�G�ڭ̥��ϥΥ��N�@�տ�J(x1(t))���ͤ@�տ�X(y1(t))
t=-50:50; %�ɶ��d�� -50~50
x1=5*t.^2+2*t; %x1=5t^2+2t
y1=t.*x1;
figure(1)
subplot(211)
plot(t+10,y1,'r*-');
xlabel('Time, t');
ylabel('y1(t1-10)');
title({'3A412134���q�y';'y(t)=tx(t)';'y1(t-10)'});
axis([-10 20 0 30]);
%����N���J�T���[�J�ɶ�����td (x2(t)=x1(t-td))
%�]td=10�A�A�N�s����J��^�t�β��ͷs��X(y2)
x2=5*(t-10).^2+2*(t-10);  %x2(t)=x1(t-10)
y2=t.*x2;
subplot(212)
plot(t,y2,'b*-')
xlabel('Time, t')
ylabel('y2(t)')
axis([-10 20 0 30]);
title({'y2(t)'});
%�̫��ˬdy2(t)�O�_����y1(t-td)�A�Y�۵��Y���D���ܨt��
%�ϥ�plot��hold on���O�Ny1�By2ø�s��P�@�i�ϤW�A�[��y2�O�_��y1������
figure(2);
plot(t+10,y1,'r*-'); hold on;
plot(t,y2,'bs-')

xlabel('Time, t')
%axis([-10 20 0 30]);
title({'3A412134���q�y';'y(t)=tx(t)';'y1(t-10) vs. y2(t)'});

%Check a time variant system
t=-50:50;
x1=5*t;
y1=-5*x1-7;
figure(3)
subplot(211)
plot(t+10,y1,'r*-')
xlabel('Time, t')
ylabel('y1(t-10)')
title({'3A412134���q�y';'y(t)=-5x(t)-7';'y1(t-10)'})
axis([-50 50 -1000 2000]);

x2=5*(t-10); %x2(t)=x1(t-10)
y2=-5*x2-7;
subplot(212)
plot(t,y2,'bs-')
xlabel('Time, t')
ylabel('y2(t)')
title('y2(t)')
%axis([0 100 0 500]);

figure(4);
plot(t+10,y1,'r*-'); hold on;
plot(t,y2,'bs-')

xlabel('Time, t')
%axis([-10 20 0 30]);
title({'3A412134���q�y';'y(t)=-5x(t)-7';'y1(t-10) vs. y2(t)'});

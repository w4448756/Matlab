%lab1_4_1b.m
%Check a linear system  y(t)=2*x(t)
%�t�Ϊ�l��
clear all;close all;
%�ϥέ��|��z�ˬd�u�ʨt��
t=-50:50;%�ɶ��d��----���j��1���ɶ��}�C
x1=-5*t.^-5-10;%x1=-5t^-5-10
y1=-5*x1-7;
figure(1)
subplot(211)
plot(t,y1,'r*-');
xlabel('Time, t');
ylabel('y1(t)');
title({'3A412140���۲�';'y1(t)'});
%axis([-10 20 0 30]);

x2=5*t.^-5;  %x2=5t^-5
y2=-5*x2-7;
subplot(212)
plot(t,y2,'b*-')
xlabel('Time, t')
ylabel('y2(t)')
%axis([-10 20 0 30]);
title({'3A412140���۲�';'y2(t)'});

%�N��տ�J���u�ʲզX���Ϳ�Jx3�A�A��J�t�β��Ϳ�Xy3
%�N��տ�X�]���u�ʲզX���Ϳ�Xy4�A���ˬdy3,y4�O�_�ۦP
a=-2;
b=12;
x3=a*x1+b*x2;
y3=-5*x3-7;

y4=a*y1+b*y2;
%�N��X�L��P�@�i�ϤW���[��O�_���|
figure(2);
plot(t,y3,'r*-'); hold on;%hold on�O�d�e�@���L�X���ϧ�
plot(t,y4,'bs-')
xlabel('Time, t')
%axis([-10 20 0 30]);
title({'3A412140���۲�';'y3(t) vs. y4(t)=a*y1(t)+b*y2(t)'});

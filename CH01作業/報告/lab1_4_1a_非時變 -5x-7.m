%lab1_4_1a.m
%Check a time invariant system
%�t�Ϊ�l��
%�ϥΥ��N��J���ͤ@�տ�Xy1
clear all;close all;
t=-50:50;
x1=5*t.^3-5;
y1=-5*x1-7;
figure(1)
subplot(211)
plot(t+10,y1,'r*-'); 
xlabel('Time, t');
ylabel('y1(t1-10)');
title({'3A412140���۲�';'y1(t)'});
axis([-10 20 0 30]);
%�ϥΤ����N��J�[�J�ɶ�����td���ͤ@�տ�Xy2
%�ɶ�����td=10
x2=5*(t-10).^3-5;  %x2(t)=x1(t-10)
y2=-5*x2-7;
subplot(212)
plot(t,y2,'b*-')
xlabel('Time, t')
ylabel('y2(t)')
axis([-10 20 0 30]);
title({'3A412140���۲�';'y2(t)'});
%�ˬdy2(t)�O�_�Py1(t-10)�۵�
%%�N��X�L��P�@�i�ϤW���[��y2�O�_y1����
figure(2);
plot(t+10,y1,'r*-'); hold on;%hold on�O�d�e�@���L�X���ϧ�
plot(t,y2,'bs-')

xlabel('Time, t')
%axis([-10 20 0 30]);
title({'3A412140���۲�';'y1(t-10) vs. y2(t)'});

%Check a time variant system
t=-50:50;
x1=3*t;
y1=(2*x1)./t;
figure(3)
subplot(211)
plot(t+10,y1,'r*-')
xlabel('Time, t')
ylabel('y1(t-10)')
title('y1(t-10)')
axis([-50 50 -10 10]);

x2=3*(t-10); %x2(t)=x1(t-10)
y2=(2*x2)./t;
subplot(212)
plot(t,y2,   'bs-')
xlabel('Time, t')
ylabel('y2(t)')
%axis([0 100 0 500]);




%lab1_4_2_V2.m
%�t�Ϊ�l��
clear all; close all;
%�ˬd�]�G�t�ζ��ŦX��X�u��L�h�β{�b����J�����B�P���Ӫ���J�L��
%�ϥΥ��N��J��i�t�Χq�����J��X���t
t=1:20; 
t1=t(1:15)+5;
x1(1:10)=0;
x1(11:20)=2*t(11:20);

y1(1:15)=x1(t1);
%�L�X��J�ο�X���[������Y
figure(1)
subplot(211)
plot(t,x1);hold on
%�Хܿ�J�U�I�ƭ�
for n=1:20
    plot(t(n),x1(n),'ro')
    str=[num2str(x1(n))];
    text(t(n),x1(n)+5,str)
end
xlabel('time')
ylabel('x(input)')
title({'3A412140���۲�';'Uncausal System'})

subplot(212)
plot(t(1:15),y1);hold on
%�Хܿ�X�U�I�ƭ�
for n=1:15
    plot(t(n),x1(n+5),'ro')
    str=[num2str(x1(n+5))];
    text(t(n),x1(n+5)+5,str)
end
xlabel('time')
ylabel('y(output)')

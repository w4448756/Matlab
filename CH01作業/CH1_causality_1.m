%�t�Ϊ�l�ơA����]���e�{���үd�U���Ȧs�Ӳ��ͻ~�t
clear all; close all;
%�n�ˬd�]�G�t�ΡA���[��t�ο�X�u�P�{�b�ιL�h����J�����A�åB�P���ӿ�J�ȵL��
%�G�ڭ̨ϥΥ��N�@�տ�J(x1)������J�t���[���X(y1)�ο�J�����Y
t=-10:10; %�ɶ��d��-10~10�A���j0.1�At(6)=0
x(1:10)=t(1:10); %t<0�ɡAx=t
x(11:21)=2*t(11:21); %t>=0�ɡAx=2t
y=t.*x;
%�N��J(x)�ο�X(y)��plot���O���O�e�X�A���[���J�ο�X�����Y
figure(1)
subplot(211)
plot(t,x,'*-');hold on;
%�ХܥX�C�@�I��Jx���ƭ�
for n=1:21
plot(t(n),x(n),'ro')
str=[num2str(x(n))];
text(t(n),x(n)+4,str)
end
xlabel('time')
ylabel('x(input)')
title({'3A412134 ���q�y';'y(t)=tx(t)';'Check Causal System'})
subplot(212)
plot(t,y,'r*-'); hold on;
%�ХܥX�C�@�I��Xy���ƭ�
for n=1:21
plot(t(n),y(n),'bo')
str=[num2str(y(n))];
text(t(n),y(n)+20,str)
end
xlabel('time')
ylabel('y(output)')

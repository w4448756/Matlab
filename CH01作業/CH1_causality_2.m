%�t�Ϊ�l�ơA����]���e�{���үd�U���Ȧs�Ӳ��ͻ~�t
clear all; close all;
%�n�ˬd�]�G�t�ΡA���[��t�ο�X�u�P�{�b�ιL�h����J�����A�åB�P���ӿ�J�ȵL��
%�G�ڭ̨ϥΥ��N�@�տ�J(x1)������J�t���[���X(y1)�ο�J�����Y
%�ɶ��d��-5~5�A���j��1�A���]�D�ئ�t^2����J�G�N�ɶ��X�R��-5~25
%���t�μ����ɶ����¬�-5~5
t=-5:25; 
x1(1:5)=0; %t<0�� x=0
x1(6:31)=2*t(6:31); %t>=0�� x=2t
%�Ot1=t^2�h�����D�ةһݪ�x(t^2)
t1(1:11)=t(1:11).^2
%t1=t^2�Gt1���ȥ������t�ơA�ڭ̱Nt1��@x1�����ޭ�
%��t1�ҹ�����x1�d������x1(6:31)(t>=0����J)
%�G�Nx1�����ޭȭץ���t1+6
y1(1:11)=t(1:11).*x1(t1+6);

%�̫�N��J(x1)�ο�X(y1)�ϥ�plot���O���Oø�s����
%�H�Q�[���J�ο�X�����Y
figure(1)
subplot(211)
plot(t,x1);hold on;
%�ХܥX�C�@�I��Jx���ƭ�
for n=1:31
plot(t(n),x1(n),'ro')
str=[num2str(x1(n))];
text(t(n),x1(n)+8,str)
end
xlabel('time')
ylabel('x(t)')
title({'3A412134 ���q�y';'y(t)=tx(t^2)';'check uncausal system'}) 

subplot(212)
plot(t(1:11),y1); hold on;
%�ХܥX�C�@�I��Xy���ƭ�
for n=1:11
plot(t(n),y1(n),'ro')
str=[num2str(y1(n))];
text(t(n)+0.1,y1(n)+50,str)
end
xlabel('time')
ylabel('y(output)')
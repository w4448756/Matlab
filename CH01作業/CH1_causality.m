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

%Check uncausal system:  y(t)=tx(t^2)

t=-5:25;
x1(1:6)=0; %x<=0�� x=0
x1(7:31)=2*t(7:31); %x>0�� =2t
%x_i(t)=x(t^2)
 for i=7:11  %t=1~5�ɪ���J
     k=(i-6).^2+6;
     x_i(i)=x1(k);
     x_i(i)
 end
x_i(6)=x1(6);
x_i(1:5)=x_i(11:-1:7);
% y1(1:51)=t(1:51).*x_i(1:51); %y(t)=t*x_i(|t|) ,t<=0
% y1(52:101)=t(52:101).*x_i(52:101);%y(t)=t*x_i(t) ,t>0
y1(1:11)=t(1:11).*x_i(1:11);
figure(2)
subplot(311)
plot(t,x1)
xlabel('time')
ylabel('x(t)')
%axis([-5 250 0 500]);
title({'�|�q�T�� 3A412134 ���q�y';'y(t)=tx(t^2)';'check uncausal system'}) 
subplot(312)
plot(t(1:11),x_i)
xlabel('time')
ylabel('x(t^2)')

subplot(313)
plot(t(1:11),y1)
xlabel('time')
ylabel('y(output)')

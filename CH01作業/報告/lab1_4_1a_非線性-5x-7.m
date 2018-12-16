%lab1_4_1b.m
%Check a linear system  y(t)=2*x(t)
%系統初始化
clear all;close all;
%使用重疊原理檢查線性系統
t=-50:50;%時間範圍----間隔為1的時間陣列
x1=-5*t.^-5-10;%x1=-5t^-5-10
y1=-5*x1-7;
figure(1)
subplot(211)
plot(t,y1,'r*-');
xlabel('Time, t');
ylabel('y1(t)');
title({'3A412140黃彥翎';'y1(t)'});
%axis([-10 20 0 30]);

x2=5*t.^-5;  %x2=5t^-5
y2=-5*x2-7;
subplot(212)
plot(t,y2,'b*-')
xlabel('Time, t')
ylabel('y2(t)')
%axis([-10 20 0 30]);
title({'3A412140黃彥翎';'y2(t)'});

%將兩組輸入做線性組合產生輸入x3，再放入系統產生輸出y3
%將兩組輸出也做線性組合產生輸出y4，後檢查y3,y4是否相同
a=-2;
b=12;
x3=a*x1+b*x2;
y3=-5*x3-7;

y4=a*y1+b*y2;
%將輸出印於同一張圖上來觀察是否重疊
figure(2);
plot(t,y3,'r*-'); hold on;%hold on保留前一次印出之圖形
plot(t,y4,'bs-')
xlabel('Time, t')
%axis([-10 20 0 30]);
title({'3A412140黃彥翎';'y3(t) vs. y4(t)=a*y1(t)+b*y2(t)'});

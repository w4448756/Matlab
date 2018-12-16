%lab1_4_1a.m
%Check a time invariant system
%系統初始化
%使用任意輸入產生一組輸出y1
clear all;close all;
t=-50:50;
x1=5*t.^3-5;
y1=-5*x1-7;
figure(1)
subplot(211)
plot(t+10,y1,'r*-'); 
xlabel('Time, t');
ylabel('y1(t1-10)');
title({'3A412140黃彥翎';'y1(t)'});
axis([-10 20 0 30]);
%使用元任意輸入加入時間延遲td產生一組輸出y2
%時間延遲td=10
x2=5*(t-10).^3-5;  %x2(t)=x1(t-10)
y2=-5*x2-7;
subplot(212)
plot(t,y2,'b*-')
xlabel('Time, t')
ylabel('y2(t)')
axis([-10 20 0 30]);
title({'3A412140黃彥翎';'y2(t)'});
%檢查y2(t)是否與y1(t-10)相等
%%將輸出印於同一張圖上來觀察y2是否y1延伸
figure(2);
plot(t+10,y1,'r*-'); hold on;%hold on保留前一次印出之圖形
plot(t,y2,'bs-')

xlabel('Time, t')
%axis([-10 20 0 30]);
title({'3A412140黃彥翎';'y1(t-10) vs. y2(t)'});

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




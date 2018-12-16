%系統初始化，防止因之前程式所留下的暫存而產生誤差
clear all;close all;
%要檢查線性系統，故使用重疊原理
%先用任意2組輸入(x1、x2)產生2組不同的輸出(y1、y2)
t=-50:50; %產生時間陣列，間隔為1，共101筆
x1=3*t.^2;
y1=t.*x1;
figure(1)
subplot(211)
plot(t,y1,'g*-');
xlabel('Time, t');
ylabel('y1(t)');
title({['3A412134 黃敬斌'];'y(t)=tx(t)';['y1(t)']});

x2=10*t;  
y2=t.*x2;
subplot(212)
plot(t,y2,'b*-')
xlabel('Time, t')
ylabel('y2(t)')
title('y2(t)');

%之後將2組輸入做線性組合產生新的輸入(x3)，再丟回系統產生一組輸出(y3)
%將2組原輸出值也做線性組合產生另一組輸出(y4)，最後檢查y3、y4是否相同
a=-5;
b=12;
x3=a*x1+b*x2;
y3=t.*x3;

y4=a*y1+b*y2;

%使用plot以及hold on指令將y3、y4之圖形繪製於同一張圖上以利觀察是否重疊
figure(2);
plot(t,y3,'r*-'); hold on;
plot(t,y4,'bs-')
xlabel('Time, t')
title({'3A412134 黃敬斌';'y(t)=tx(t)';'y3(t) vs. y4(t)=a*y1(t)+b*y2(t)'});
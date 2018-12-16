%系統初始化，防止因之前程式所留下的暫存而產生誤差
clear all;close all;
%檢查非時變系統，故我們先使用任意一組輸入(x1(t))產生一組輸出(y1(t))
t=-50:50; %時間範圍 -50~50
x1=5*t.^2+2*t; %x1=5t^2+2t
y1=t.*x1;
figure(1)
subplot(211)
plot(t+10,y1,'r*-');
xlabel('Time, t');
ylabel('y1(t1-10)');
title({'3A412134黃敬斌';'y(t)=tx(t)';'y1(t-10)'});
axis([-10 20 0 30]);
%之後將原輸入訊號加入時間延遲td (x2(t)=x1(t-td))
%設td=10，再將新的輸入丟回系統產生新輸出(y2)
x2=5*(t-10).^2+2*(t-10);  %x2(t)=x1(t-10)
y2=t.*x2;
subplot(212)
plot(t,y2,'b*-')
xlabel('Time, t')
ylabel('y2(t)')
axis([-10 20 0 30]);
title({'y2(t)'});
%最後檢查y2(t)是否等於y1(t-td)，若相等即為非時變系統
%使用plot及hold on指令將y1、y2繪製於同一張圖上，觀察y2是否為y1之延伸
figure(2);
plot(t+10,y1,'r*-'); hold on;
plot(t,y2,'bs-')

xlabel('Time, t')
%axis([-10 20 0 30]);
title({'3A412134黃敬斌';'y(t)=tx(t)';'y1(t-10) vs. y2(t)'});

%Check a time variant system
t=-50:50;
x1=5*t;
y1=-5*x1-7;
figure(3)
subplot(211)
plot(t+10,y1,'r*-')
xlabel('Time, t')
ylabel('y1(t-10)')
title({'3A412134黃敬斌';'y(t)=-5x(t)-7';'y1(t-10)'})
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
title({'3A412134黃敬斌';'y(t)=-5x(t)-7';'y1(t-10) vs. y2(t)'});

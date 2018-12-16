%系統初始化，防止因之前程式所留下的暫存而產生誤差
clear all; close all;
%要檢查因果系統，需觀察系統輸出只與現在及過去的輸入有關，並且與未來輸入值無關
%故我們使用任意一組輸入(x1)直接放入系統觀察輸出(y1)及輸入的關係
t=-10:10; %時間範圍-10~10，間隔0.1，t(6)=0
x(1:10)=t(1:10); %t<0時，x=t
x(11:21)=2*t(11:21); %t>=0時，x=2t
y=t.*x;
%將輸入(x)及輸出(y)用plot指令分別畫出，來觀察輸入及輸出的關係
figure(1)
subplot(211)
plot(t,x,'*-');hold on;
%標示出每一點輸入x的數值
for n=1:21
plot(t(n),x(n),'ro')
str=[num2str(x(n))];
text(t(n),x(n)+4,str)
end
xlabel('time')
ylabel('x(input)')
title({'3A412134 黃敬斌';'y(t)=tx(t)';'Check Causal System'})
subplot(212)
plot(t,y,'r*-'); hold on;
%標示出每一點輸出y的數值
for n=1:21
plot(t(n),y(n),'bo')
str=[num2str(y(n))];
text(t(n),y(n)+20,str)
end
xlabel('time')
ylabel('y(output)')

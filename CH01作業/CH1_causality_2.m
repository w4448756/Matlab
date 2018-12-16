%系統初始化，防止因之前程式所留下的暫存而產生誤差
clear all; close all;
%要檢查因果系統，需觀察系統輸出只與現在及過去的輸入有關，並且與未來輸入值無關
%故我們使用任意一組輸入(x1)直接放入系統觀察輸出(y1)及輸入的關係
%時間範圍-5~5，間隔為1，但因題目有t^2之輸入故將時間擴充至-5~25
%但系統模擬時間依舊為-5~5
t=-5:25; 
x1(1:5)=0; %t<0時 x=0
x1(6:31)=2*t(6:31); %t>=0時 x=2t
%令t1=t^2去應對題目所需的x(t^2)
t1(1:11)=t(1:11).^2
%t1=t^2故t1的值必不為負數，我們將t1當作x1的索引值
%但t1所對應的x1範圍應為x1(6:31)(t>=0之輸入)
%故將x1的索引值修正為t1+6
y1(1:11)=t(1:11).*x1(t1+6);

%最後將輸入(x1)及輸出(y1)使用plot指令分別繪製成圖
%以利觀察輸入及輸出的關係
figure(1)
subplot(211)
plot(t,x1);hold on;
%標示出每一點輸入x的數值
for n=1:31
plot(t(n),x1(n),'ro')
str=[num2str(x1(n))];
text(t(n),x1(n)+8,str)
end
xlabel('time')
ylabel('x(t)')
title({'3A412134 黃敬斌';'y(t)=tx(t^2)';'check uncausal system'}) 

subplot(212)
plot(t(1:11),y1); hold on;
%標示出每一點輸出y的數值
for n=1:11
plot(t(n),y1(n),'ro')
str=[num2str(y1(n))];
text(t(n)+0.1,y1(n)+50,str)
end
xlabel('time')
ylabel('y(output)')
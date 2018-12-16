%lab1_4_2_V2.m
%系統初始化
clear all; close all;
%檢查因果系統須符合輸出只跟過去及現在的輸入有關且與未來的輸入無關
%使用任意輸入放進系統吼比較輸入輸出關系
t=1:20; 
t1=t(1:15)+5;
x1(1:10)=0;
x1(11:20)=2*t(11:20);

y1(1:15)=x1(t1);
%印出輸入及輸出來觀察其關係
figure(1)
subplot(211)
plot(t,x1);hold on
%標示輸入各點數值
for n=1:20
    plot(t(n),x1(n),'ro')
    str=[num2str(x1(n))];
    text(t(n),x1(n)+5,str)
end
xlabel('time')
ylabel('x(input)')
title({'3A412140黃彥翎';'Uncausal System'})

subplot(212)
plot(t(1:15),y1);hold on
%標示輸出各點數值
for n=1:15
    plot(t(n),x1(n+5),'ro')
    str=[num2str(x1(n+5))];
    text(t(n),x1(n+5)+5,str)
end
xlabel('time')
ylabel('y(output)')

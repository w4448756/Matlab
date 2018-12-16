%¿À¨d y(t)=-5x(t)-7 ¨Oß_Ωu© 
clear all;
close all;
t=-50:50;
x1=-t.^-1*exp(2)+t.^-2;
y1=-5*x1-7;
figure(1)
subplot(211)
plot(t,y1,'g*-');
xlabel('Time, t');
ylabel('y1(t)');
title({'3A412134 ∂¿∑qŸy';'y(t)=-5x(t)-7';'y1(t)'});
%axis([-0 50 0 15000]);

x2=t.^-5*exp(1);  
y2=-5*x2-7
subplot(212)
plot(t,y2,'b*-')
xlabel('Time, t')
ylabel('y2(t)')
%axis([-10 20 0 30]);
title('y2(t)');

a=12;
b=12;
x3=a*x1+b*x2;
y3=-5*x3-7;

y4=a*y1+b*y2;

figure(2);
plot(t,y3,'r*-'); hold on;
plot(t,y4,'bs-')
xlabel('Time, t')
%axis([-10 20 0 30]);
title({['3A412134 ∂¿∑qŸy'];'y(t)=-5x(t)-7';['y3(t) vs. y4(t)=a*y1(t)+b*y2(t)']});
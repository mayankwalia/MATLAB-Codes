%Plot for two vectors x and y
x=[4,8,12,16,20,24];
y=[346,432,646,533,654,832];
plot(x,y);
%Plot for function y=f(x)
x=linspace(-500,500,50000);
y=exp(-.01*x).*cos(2*pi*x);
plot(x,y);
%Parametric form x=f(t) and y=f(t)
r=2;t=linspace(0,2*pi);
x=r*cos(t);y=r*sin(t);
plot(x,y)

clear clc clos
x=linspace(0,2*pi,100);
%y1=sin(x);
y2=cos(x);
y3=tan(x);
y4=csc(x);
y5=sec(x);
y6=cot(x);
plot(x,y1);
hold on;
%plot(x,y2);plot(x,y3);plot(x,y4);plot(x,y5);plot(x,y6);
hold off;

clear clc close
f=@(x) exp(-.5*x).*cos(2*pi*x);
subplot(2,2,1);
fplot(f);
title('Default intervel [-5,5]');
subplot(2,2,2);
fplot(f,[0,4]);
title('Interval specified [0,4]');
subplot(2,2,3);
fplot(f,'-or','LineWidth',2,'MarkerSize',8,'MarkerFaceColor','g');
title('With line specifiers');
subplot(2,2,4);
fplot(f);
x=@(t) t.*cos(t);
y=@(t) t.*sin(t);
fplot(x,y,[0,20*pi]);
title('Parametric Representation');

b=10;
t=linspace(0,2,100);
y1=(3/2)*exp(-2*b*t)+(1/2)*exp(-2*t);
y2=(3/2)*exp(-2*b*t)-(1/2)*exp(-2*t);
figure(1);
plot(t,y1,'-r',t,y2,'-b'),xlabel t,ylabel y(t),
legend('y1(t)','y2(t)'),grid on,title('\beta = 10');

b=100;
t=linspace(0,2,100);
y1=(3/2)*exp(-2*b*t)+(1/2)*exp(-2*t);
y2=(3/2)*exp(-2*b*t)-(1/2)*exp(-2*t);
figure(2);
plot(t,y1,'-r',t,y2,'-b'),xlabel t,ylabel y(t),
legend('y1(t)','y2(t)'),grid on,title('\beta = 100');

b=1000;
t=linspace(0,2,100);
y1=(3/2)*exp(-2*b*t)+(1/2)*exp(-2*t);
y2=(3/2)*exp(-2*b*t)-(1/2)*exp(-2*t);
figure(3);
plot(t,y1,'-r',t,y2,'-b'),xlabel t,ylabel y(t),
legend('y1(t)','y2(t)'),grid on;,title('\beta = 1000');
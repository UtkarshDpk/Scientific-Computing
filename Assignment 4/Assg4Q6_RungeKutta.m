%--------------------Runge Kutta--------------------%
% max eigen value = 2*b
% h = tspan/N i.e. 1-0/N
% c=2*b*h
b=10;c=2.73;

A=[b+1,b-1;
   b-1,b+1];
f=@(t,y)(-A*[y(1); y(2)]);
[t1,y1] = RungeKutta(f,[0,1],[1;2],2*b/c);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b=100;c=2.73;

A=[b+1,b-1;
   b-1,b+1];
f=@(t,y)(-A*[y(1); y(2)]);
[t2,y2] = RungeKutta(f,[0,1],[1;2],2*b/c);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b=1000;c=2.73;

A=[b+1,b-1;
   b-1,b+1];
f=@(t,y)(-A*[y(1); y(2)]);
[t3,y3] = RungeKutta(f,[0,1],[1;2],2*b/c);

figure(4);
plot(t1,y1(:,1),'-b',t1,y1(:,2),'-r'),xlabel t,ylabel y(t),grid on
legend('y1','y2'),title('RungeKutta \beta = 10');
figure(5);
plot(t2,y2(:,1),'-b',t2,y2(:,2),'-r'),xlabel t,ylabel y(t),grid on
legend('y1','y2'),title('RungeKutta \beta = 100');
figure(6);
plot(t3,y3(:,1),'-b',t3,y3(:,2),'-r'),xlabel t,ylabel y(t),grid on
legend('y1','y2'),title('RungeKutta \beta = 1000');
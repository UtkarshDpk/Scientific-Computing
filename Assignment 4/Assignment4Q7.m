format shorte;

%-------------------Explicit Euler-------------------%
b=1000;c=1;
h=c/(2*b);
A=[b+1,b-1;
   b-1,b+1];
f=@(t,y)(-A*[y(1); y(2)]);
[t1,y1] = ExplicitEuler(f,[0,1],[1;2],1/h);

ya1 = (3/2)*exp(-2*b*t1)-(1/2)*exp(-2*t1);
ya2 = (3/2)*exp(-2*b*t1)+(1/2)*exp(-2*t1);
ya=[ya1';ya2'];

err=max(abs(y1(round(end/2),:)-ya(round(end/2),:)));

figure(1);
plot(t1,y1(:,1),'-b',t1,y1(:,2),'-r',t1,ya1,'--b',t1,ya2,'--r'),
title('Explicit Euler \beta = 1000 c=1'),legend('y1','y2','ya1','ya2'),
xlabel t, ylabel y(t),grid on;

%----------------Predictor Corrector-----------------%
b=1000;c=1.93;
h=[h; c/(2*b)];
A=[b+1,b-1;
   b-1,b+1];
f=@(t,y)(-A*[y(1); y(2)]);
[t2,y2] = PredictorCorrector(f,[0,1],[1;2],1/h(2));

ya1 = (3/2)*exp(-2*b*t2)-(1/2)*exp(-2*t2);
ya2 = (3/2)*exp(-2*b*t2)+(1/2)*exp(-2*t2);
ya=[ya1',ya2'];

err=[err; max(abs(y2(round(end/2),:)-ya(round(end/2),:)))];

figure(2);
plot(t2,y2(:,1),'-b',t2,y2(:,2),'-r',t2,ya1,'--b',t2,ya2,'--r')
title('Predictor Corrector \beta = 1000 c=1.93'),legend('y1','y2','ya1','ya2'),
xlabel t, ylabel y(t),grid on;

%--------------------Runge Kutta---------------------%
b=1000;c=2.73;
h=[h; c/(2*b)];
A=[b+1,b-1;
   b-1,b+1];
f=@(t,y)(-A*[y(1); y(2)]);
[t3,y3] = RungeKutta(f,[0,1],[1;2],1/h(3));

ya1 = (3/2)*exp(-2*b*t3)-(1/2)*exp(-2*t3);
ya2 = (3/2)*exp(-2*b*t3)+(1/2)*exp(-2*t3);
ya=[ya1',ya2'];

err=[err; max(abs(y3(round(end/2),:)-ya(round(end/2),:)))];

figure(3);
plot(t3,y3(:,1),'-b',t3,y3(:,2),'-r',t3,ya1,'--b',t3,ya2,'--r')
title('RungeKutta \beta = 1000 c=2.73'),legend('y1','y2','ya1','ya2'),
xlabel t, ylabel y(t),grid on;
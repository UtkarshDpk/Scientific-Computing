%--------------Explicit Euler------------------%
%max eigen value = 2*b
%h = tspan/N i.e. 1-0/N
%c=2*b*h
b=10;c=2;

A=[b+1,b-1;
   b-1,b+1];
f=@(t,y)(-A*[y(1); y(2)]);
[t1,y1] = ExplicitEuler(f,[0,1],[1;2],2*b/c);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b=100;c=2;

A=[b+1,b-1;
   b-1,b+1];
f=@(t,y)(-A*[y(1); y(2)]);
[t2,y2] = ExplicitEuler(f,[0,1],[1;2],2*b/c);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b=1000;c=2;

A=[b+1,b-1;
   b-1,b+1];
f=@(t,y)(-A*[y(1); y(2)]);
[t3,y3] = ExplicitEuler(f,[0,1],[1;2],2*b/c);

figure(1);
plot(t1,y1(:,1),'-b',t1,y1(:,2),'-r'),xlabel t,ylabel y(t),grid on
legend('y1','y2'),title('ExplicitEuler \beta = 10');
figure(2);
plot(t2,y2(:,1),'-b',t2,y2(:,2),'-r'),xlabel t,ylabel y(t),grid on
legend('y1','y2'),title('ExplicitEuler \beta = 100');
figure(3);
plot(t3,y3(:,1),'-b',t3,y3(:,2),'-r'),xlabel t,ylabel y(t),grid on
legend('y1','y2'),title('ExplicitEuler \beta = 1000');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%In all the above cases c>1
%Now taking c=1
b=10;c=1;

A=[b+1,b-1;
   b-1,b+1];
f=@(t,y)(-A*[y(1); y(2)]);
[t1,y1] = ExplicitEuler(f,[0,1],[1;2],2*b/c);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b=100;c=1;

A=[b+1,b-1;
   b-1,b+1];
f=@(t,y)(-A*[y(1); y(2)]);
[t2,y2] = ExplicitEuler(f,[0,1],[1;2],2*b/c);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b=1000;c=1;

A=[b+1,b-1;
   b-1,b+1];
f=@(t,y)(-A*[y(1); y(2)]);
[t3,y3] = ExplicitEuler(f,[0,1],[1;2],2*b/c);

figure(4);
plot(t1,y1(:,1),'-b',t1,y1(:,2),'-r'),xlabel t,ylabel y(t),grid on
legend('y1','y2'),title('ExplicitEuler \beta = 10');
figure(5);
plot(t2,y2(:,1),'-b',t2,y2(:,2),'-r'),xlabel t,ylabel y(t),grid on
legend('y1','y2'),title('ExplicitEuler \beta = 100');
figure(6);
plot(t3,y3(:,1),'-b',t3,y3(:,2),'-r'),xlabel t,ylabel y(t),grid on
slegend('y1','y2'),title('ExplicitEuler \beta = 1000');
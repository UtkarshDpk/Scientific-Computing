format shorte;

%--------------Predictor Corrector------------------%
%-----b=10
b=10;
A=[b+1,b-1;
   b-1,b+1];
f=@(t,y)(-A*[y(1); y(2)]);
[t,y] = PredictorCorrector(f,[0,1],[1;2],100);
figure(4);
plot(t,y,'-')

%-----b=100
b=100;
A=[b+1,b-1;
   b-1,b+1];
f=@(t,y)(-A*[y(1); y(2)]);
[t,y] = PredictorCorrector(f,[0,1],[1;2],100);
figure(5);
plot(t,y,'-')

%-----b=1000
b=1000;
A=[b+1,b-1;
   b-1,b+1];
f=@(t,y)(-A*[y(1); y(2)]);
[t,y] = PredictorCorrector(f,[0,1],[1;2],1000);
figure(6);
plot(t,y,'-')


% %--------------------Runge Kutta-------------------------%
% %-----b=10
% b=10;
% A=[b+1,b-1;
%    b-1,b+1];
% f=@(t,y)(-A*[y(1); y(2)]);
% [t,y] = RungeKutta(f,[0,1],[1;2],100);
% figure(7);
% plot(t,y,'-')
% 
% %-----b=100
% b=100;
% A=[b+1,b-1;
%    b-1,b+1];
% f=@(t,y)(-A*[y(1); y(2)]);
% [t,y] = RungeKutta(f,[0,1],[1;2],100);
% figure(8);
% plot(t,y,'-')
% 
% %-----b=1000
% b=1000;
% A=[b+1,b-1;
%    b-1,b+1];
% f=@(t,y)(-A*[y(1); y(2)]);
% [t,y] = RungeKutta(f,[0,1],[1;2],1000);
% figure(9);
% plot(t,y,'-')
format shorte

%--------------Problem 1 Predictor Corrector--------------%
N=600;tspan=[0,3];yzero=1;
myf=@(t,y)(-y-5*exp(-t).*sin(5*t));
[t1,y1]=PredictorCorrector(myf,tspan,yzero,N);
ya=exp(-t1).*cos(5*t1);
diff2=max(abs(y1-ya'));

N=1200;
[t2,y2]=PredictorCorrector(myf,tspan,yzero,N);
ya=exp(-t2).*cos(5*t2);
diff2=[diff2; max(abs(y2-ya'))];

figure(4);
subplot(121),plot(t1,y1,'-b'),
title('Prob1-PredictorCorrector,N=600'),xlabel t,ylabel y(t),grid on
subplot(122),plot(t2,y2,'-r'),
title('Prob1-PredictorCorrector,N=1200'),xlabel t,ylabel y(t),grid on


%-----------Problem 2 Predictor Corrector---------------%
N=500;tspan=[0,10];yzero=[1;1];
pend=@(t,y)[y(2); -sin(y(1))];
[t1,y1]=PredictorCorrector(pend,tspan,yzero,N);
options = odeset('AbsTol',1e-20,'RelTol',1e-13);
[~,ya]=ode45(pend,t1,yzero,options);
% diff2=[diff2; max(max(abs(y1(:,1)-ya(:,1)),abs(y1(:,2)-ya(:,2))))];
diff2=[diff2; max(max(abs(y1-ya)))];

N=1000;
[t2,y2]=PredictorCorrector(pend,tspan,yzero,N);
[~,ya]=ode45(pend,t2,yzero,options);
% diff2=[diff2; max(max(abs(y2(:,1)-ya(:,1)),abs(y2(:,2)-ya(:,2))))];
diff2=[diff2; max(max(abs(y2-ya)))];

figure(5);
subplot(121),plot(t1,y1(:,1),'-b',t1,y1(:,2),'-r'),
title('Prob2-PredictorCorrector,N=500'),xlabel t,ylabel y(t),
grid on,legend('y1','y2')
subplot(122),plot(t2,y2(:,1),'-b',t2,y2(:,2),'-r'),
title('Prob2-PredictorCorrector,N=1000'),xlabel t,ylabel y(t),
grid on,legend('y1','y2')


%-------------------Problem 3 Predictor Corrector-----------%
N=20000;tspan=[0,50];yzero=[1;1;1];
l=0.2;m=0.2;n=2.5;
rossler=@(t,y)([-y(2)-y(3); y(1)+l*y(2); m+y(3).*(y(1)-n)]);
[t1,y1]=PredictorCorrector(rossler,tspan,yzero,N);
options = odeset('AbsTol',1e-20,'RelTol',1e-13);
[~,ya]=ode45(rossler,t1,yzero,options);
% diff2=[diff2; max([max(abs(y1(:,1)-ya(:,1))),max(abs(y1(:,2)-ya(:,2))),...
%     max(abs(y1(:,3)-ya(:,3)))])];
diff2=[diff2; max(max(abs(y1-ya)))];

N=40000;
[t2,y2]=PredictorCorrector(rossler,tspan,yzero,N);
[~,ya]=ode45(rossler,t2,yzero,options);
% diff2=[diff2; max([max(abs(y2(:,1)-ya(:,1))),max(abs(y2(:,2)-ya(:,2))),...
%     max(abs(y2(:,3)-ya(:,3)))])];
diff2=[diff2; max(max(abs(y2-ya)))];

figure(6);
subplot(121),plot(t1,y1(:,1),'-b',t1,y1(:,2),'-r',t1,y1(:,3),'-'),
title('Prob3-PredictorCorrector,N=20000'),xlabel t,ylabel y(t),
grid on,legend('y1','y2','y3')
subplot(122),plot(t2,y2(:,1),'-b',t2,y2(:,2),'-r',t2,y2(:,3),'-'),
title('Prob3-PredictorCorrector,N=40000'),xlabel t,ylabel y(t),
grid on,legend('y1','y2','y3')
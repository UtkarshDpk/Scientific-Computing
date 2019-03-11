function [t,y] = PredictorCorrector(f,tspan,yzero,N)
%Improved Euler Method
a=tspan(1);
b=tspan(2);
h=(b-a)/N;
y=yzero;
t=a;
% t=linspace(a,b,N);
for i=1:N
    t(i+1)=t(i)+h;
    
    y1 = y(:,i) + h*(f(t(i),y(:,i)));
    
    y(:,i+1)=y(:,i)+(h/2)*(f(t(i),y(:,i))+f(t(i+1),y1));
end
y=y';
end
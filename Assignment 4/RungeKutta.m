function [t,y] = RungeKutta(f,tspan,yzero,N)
%4th Order Method
a=tspan(1);
b=tspan(2);
h=(b-a)/N;
y=yzero;
t=a;
% t=linspace(a,b,N);
for i=1:N
    t(i+1)=t(i)+h;
    k1=f(t(i),y(:,i));
    k2=f(t(i)+h/2,y(:,i)+h*k1/2);
    k3=f(t(i)+h/2,y(:,i)+h*k2/2);
    k4=f(t(i)+h,y(:,i)+h*k3);
    
    y(:,i+1)=y(:,i)+(h/6)*(k1+2*k2+2*k3+k4);
end
y=y';
end
function [t,y] = ExplicitEuler(f,tspan,yzero,N)
%Explicit Euler Method
a=tspan(1);
b=tspan(2);
h=(b-a)/N;
y=yzero;
t=a;
%t=linspace(a,b,N);
for i=1:N
    t(i+1)=t(i)+h;
    y(:,i+1) = y(:,i) + h*(f(t(i),y(:,i)));
end
y=y';
end
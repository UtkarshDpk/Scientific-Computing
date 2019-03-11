function [t,y] = ImplicitEuler(tspan,yzero,N)
%Implicit Euler Method
a=tspan(1);
b=tspan(2);
h=(b-a)/N;
y=yzero;
t=a;
b=1000;
A=[b+1,b-1;
   b-1,b+1];
for i=1:N
    t(i+1)=t(i)+h;
    y(:,i+1)=(eye(size(A))+h*A)\y(:,i);
end
y=y';
end
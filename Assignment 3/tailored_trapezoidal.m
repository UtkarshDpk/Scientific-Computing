function [result] = tailored_trapezoidal(g, alpha, N)
x = linspace(0,1,N+1);
x = x';
x1 = x(1:end-1);
x2 = x(2:end);
A = (g(x2) - g(x1))./(x2 - x1);
B = g(x1) - A.*x1;
y = ((A./(alpha+2)).*(x2.^(alpha+2) - x1.^(alpha+2))) + ((B./(alpha+1)).*(x2.^(alpha+1) - x1.^(alpha+1)));
Y = cumsum(y);
result = Y(end);
end
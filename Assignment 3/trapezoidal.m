function [result] = trapezoidal(f, a, b, N)
%Evaluates integral using trapezoidal rule
%f = function to be evaluated, a = lower limit, b = upper limit, N = number
%of subdivision of intervals.
h = (b-a)/N;
x = [a:h:b]';
y = (h/2)*(f(x(1:1:end-1))+f(x(2:1:end)));
Y = cumsum(y);
result = Y(end);
end
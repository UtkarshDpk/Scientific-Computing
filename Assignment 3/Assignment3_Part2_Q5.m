%Evaluate integral x^alpha*cos(x^2) over 0 to 1 using tailored trapezoidal rule
format long;
%Taking N = 10 and alpha = -0.9
alpha=-0.9; N=10;
g = @(x)cos(x.^2);
I = tailored_trapezoidal(g,alpha,N);

%Taking N = 100 and alpha = -0.9
alpha=-0.9; N=100;
g = @(x)cos(x.^2);
I = [I; tailored_trapezoidal(g,alpha,N)];

%Taking N = 1000 and alpha = -0.9
alpha=-0.9; N=1000;
g = @(x)cos(x.^2);
I = [I; tailored_trapezoidal(g,alpha,N)];

%Taking N = 10000 and alpha = -0.9
alpha=-0.9; N=10000;
g = @(x)cos(x.^2);
I = [I; tailored_trapezoidal(g,alpha,N)];

%Taking N = 100000 and alpha = -0.9
alpha=-0.9; N=100000;
g = @(x)cos(x.^2);
I = [I; tailored_trapezoidal(g,alpha,N)];
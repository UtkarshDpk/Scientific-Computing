%Evaluate integral x^alpha*(1+2*x) over 0 to 1 using tailored trapezoidal rule
format long;
%Taking N = 10 and alpha = 2.2
alpha=2.2; N=10;
g = @(x)(1+2*x);
I = tailored_trapezoidal(g,alpha,N);
Ia = [0.7887; 1.4667; 11.8182];
diff = abs(I(1) - Ia(1));

%Taking N = 10 and alpha = 0.5
alpha=0.5; N=10;
g = @(x)(1+2*x);
I = [I tailored_trapezoidal(g,alpha,N)];
diff = [diff abs(I(1,2) - Ia(2))];

%Taking N = 10 and alpha = -0.9
alpha=-0.9; N=10;
g = @(x)(1+2*x);
I = [I tailored_trapezoidal(g,alpha,N)];
diff = [diff abs(I(1,3) - Ia(3))];

%Taking N = 100 and alpha = 2.2
alpha=2.2; N=100;
g = @(x)(1+2*x);
I = [I; tailored_trapezoidal(g,alpha,N) 0 0];
diff = [diff; abs(I(2,1) - Ia(1)) 0 0];

%Taking N = 100 and alpha = 0.5
alpha=0.5; N=100;
g = @(x)(1+2*x);
I(2,2) = tailored_trapezoidal(g,alpha,N);
diff(2,2) = abs(I(2,2) - Ia(2));

%Taking N = 100 and alpha = -0.9
alpha=-0.9; N=100;
g = @(x)(1+2*x);
I(2,3) = tailored_trapezoidal(g,alpha,N);
diff(2,3) = abs(I(2,3) - Ia(3));

%Taking N = 10000 and alpha = 2.2
alpha=2.2; N=10000;
g = @(x)(1+2*x);
I = [I; tailored_trapezoidal(g,alpha,N) 0 0];
diff = [diff; abs(I(3,1) - Ia(1)) 0 0];

%Taking N = 10000 and alpha = 0.5
alpha=0.5; N=10000;
g = @(x)(1+2*x);
I(3,2) = tailored_trapezoidal(g,alpha,N);
diff(3,2) = abs(I(3,2) - Ia(2));

%Taking N = 10000 and alpha = -0.9
alpha=-0.9; N=10000;
g = @(x)(1+2*x);
I(3,3) = tailored_trapezoidal(g,alpha,N);
diff(3,3) = abs(I(3,3) - Ia(3));
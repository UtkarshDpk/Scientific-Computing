%Evaluate integral x^a*(1+2*x) over 0 to 1 using trapezoidal rule
%Taking N = 10 and a = 2.2
a=2.2; N=10;
f = @(x)x.^a.*(1+2*x);
I = trapezoidal(f,0,1,N);
Ia = [0.7887; 1.4667; 11.8182];
diff = abs(I(1) - Ia(1));

%Taking N = 10 and a = 0.5
a=0.5; N=10;
f = @(x)x.^a.*(1+2*x);
I = [I trapezoidal(f,0,1,N)];
diff = [diff abs(I(1,2) - Ia(2))];

%Taking N = 10 and a = -0.9
a=-0.9; N=10;
f = @(x)x.^a.*(1+2*x);
I = [I trapezoidal(f,0,1,N)];
diff = [diff abs(I(1,3) - Ia(3))];

%Taking N = 100 and a = 2.2
a=2.2; N=100;
f = @(x)x.^a.*(1+2*x);
I = [I; trapezoidal(f,0,1,N) 0 0];
diff = [diff; abs(I(2,1) - Ia(1)) 0 0];

%Taking N = 100 and a = 0.5
a=0.5; N=100;
f = @(x)x.^a.*(1+2*x);
I(2,2) = trapezoidal(f,0,1,N);
diff(2,2) = abs(I(2,2) - Ia(2));

%Taking N = 100 and a = -0.9
a=-0.9; N=100;
f = @(x)x.^a.*(1+2*x);
I(2,3) = trapezoidal(f,0,1,N);
diff(2,3) = abs(I(2,3) - Ia(3));

%Taking N = 10000 and a = 2.2
a=2.2; N=10000;
f = @(x)x.^a.*(1+2*x);
I = [I; trapezoidal(f,0,1,N) 0 0];
diff = [diff; abs(I(3,1) - Ia(1)) 0 0];

%Taking N = 10000 and a = 0.5
a=0.5; N=10000;
f = @(x)x.^a.*(1+2*x);
I(3,2) = trapezoidal(f,0,1,N);
diff(3,2) = abs(I(3,2) - Ia(2));

%Taking N = 10000 and a = -0.9
a=-0.9; N=10000;
f = @(x)x.^a.*(1+2*x);
I(3,3) = trapezoidal(f,0,1,N);
diff(3,3) = abs(I(3,3) - Ia(3));



%Evaluate integral x^a*(1+2*x) over 0 to 1 using Simpson's rule
%Taking tol = 10^-2 and a = 2.2
a=2.2; tol=10^-2;
f = @(x)x.^a.*(1+2*x);
I = [I; quad(f,0,1,tol) 0 0];
Ia = [0.7887; 1.4667; 11.8182];
diff = [diff; abs(I(4,1) - Ia(1)) 0 0];

%Taking tol = 10^-2 and a = 0.5
a=0.5; tol=10^-2;
f = @(x)x.^a.*(1+2*x);
I(4,2) = quad(f,0,1,tol);
diff(4,2) = abs(I(4,2) - Ia(2));

%Taking tol = 10^-2 and a = -0.9
a=-0.9; tol=10^-2;
f = @(x)x.^a.*(1+2*x);
I(4,3) = quad(f,0,1,tol);
diff(4,3) = abs(I(4,3) - Ia(3));

%Taking tol = 10^-4 and a = 2.2
a=2.2; tol=10^-4;
f = @(x)x.^a.*(1+2*x);
I = [I; quad(f,0,1,tol) 0 0];
diff = [diff; abs(I(5,1) - Ia(1)) 0 0];

%Taking tol = 10^-4 and a = 0.5
a=0.5; tol=10^-4;
f = @(x)x.^a.*(1+2*x);
I(5,2) = quad(f,0,1,tol);
diff(5,2) = abs(I(5,2) - Ia(2));

%Taking tol = 10^-4 and a = -0.9
a=-0.9; tol=10^-4;
f = @(x)x.^a.*(1+2*x);
I(5,3) = quad(f,0,1,tol);
diff(5,3) = abs(I(5,3) - Ia(3));

%Taking tol = 10^-8 and a = 2.2
a=2.2; tol=10^-8;
f = @(x)x.^a.*(1+2*x);
I = [I; quad(f,0,1,tol) 0 0];
diff = [diff; abs(I(6,1) - Ia(1)) 0 0];

%Taking tol = 10^-8 and a = 0.5
a=0.5; tol=10^-8;
f = @(x)x.^a.*(1+2*x);
I(6,2) = quad(f,0,1,tol);
diff(6,2) = abs(I(6,2) - Ia(2));

%Taking tol = 10^-8 and a = -0.9
a=-0.9; tol=10^-8;
f = @(x)x.^a.*(1+2*x);
I(6,3) = quad(f,0,1,tol);
diff(6,3) = abs(I(6,3) - Ia(3));
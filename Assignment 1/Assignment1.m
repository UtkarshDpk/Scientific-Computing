%To Solve the differential equation -u''= cos(pi*x/2) analytically and compare solutions computationally

%Discretizing the differential equation
%Taking arbitrary number of intervals N=4
N=4;

% Let the length of one division be h
h=1/N;

% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';

%Analytic solution as done theoretically
constant=4/pi^2;
u=constant*cos(pi*x/2)+constant*x-constant;

%Computed Solution(U) is in the form AU=F
%Creating A matrix
principalDiag=[1; (2/(h^2))*(ones(N-1,1)); 1];
lowerDiag=[(-1/(h^2))*(ones(N-1,1)); 0; 0];
upperDiag=[0; 0;(-1/(h^2))*(ones(N-1,1))];
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N+1,N+1);
%spy(A)
A=full(A)

%Creating F matrix
x=x(2:N);
F=cos((pi*x)/2);

%Given u(0)=u(1)=0
F=[0; F; 0]

%Computing U
U=A\F

%Compare the analytic solution with Numerical solution
CompareSols=[u U]

%Error between analytic and numerical solution
E = abs(u-U)

%Plot the graph
figure(1);
x=linspace(0,1,N+1)';
plot(x,U,'b--',x,u,'k--',x,E,'r')
legend('Numerical Solution','Analytic Solution')
title('Plot of -u''''(x) = cos(pi*x/2)')
xlabel('x')
ylabel('u(x)')



%Taking arbitrary number of intervals N=4
N=8;

% Let the length of one division be h
h=1/N;

% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';

%Analytic solution as done theoretically
constant=4/pi^2;
u=constant*cos(pi*x/2)+constant*x-constant;

%Computed Solution(U) is in the form AU=F
%Creating A matrix
principalDiag=[1; (2/(h^2))*(ones(N-1,1)); 1];
lowerDiag=[(-1/(h^2))*(ones(N-1,1)); 0; 0];
upperDiag=[0; 0;(-1/(h^2))*(ones(N-1,1))];
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N+1,N+1);
%spy(A)
A=full(A)

%Creating F matrix
x=x(2:N);
F=cos((pi*x)/2);

%Given u(0)=u(1)=0
F=[0; F; 0]

%Computing U
U=A\F

%Compare the analytic solution with Numerical solution
CompareSols=[u U]

%Error between analytic and numerical solution
E = abs(u-U)

%Plot the graph
figure(2);
x=linspace(0,1,N+1)';
plot(x,U,'b--',x,u,'k--',x,E,'r')
legend('Numerical Solution','Analytic Solution')
title('Plot of -u''''(x) = cos(pi*x/2)')
xlabel('x')
ylabel('u(x)')


%Taking arbitrary number of intervals N=4
N=16;

% Let the length of one division be h
h=1/N;

% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';

%Analytic solution as done theoretically
constant=4/pi^2;
u=constant*cos(pi*x/2)+constant*x-constant;

%Computed Solution(U) is in the form AU=F
%Creating A matrix
principalDiag=[1; (2/(h^2))*(ones(N-1,1)); 1];
lowerDiag=[(-1/(h^2))*(ones(N-1,1)); 0; 0];
upperDiag=[0; 0;(-1/(h^2))*(ones(N-1,1))];
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N+1,N+1);
%spy(A)
A=full(A)

%Creating F matrix
x=x(2:N);
F=cos((pi*x)/2);

%Given u(0)=u(1)=0
F=[0; F; 0]

%Computing U
U=A\F

%Compare the analytic solution with Numerical solution
CompareSols=[u U]

%Error between analytic and numerical solution
E = abs(u-U)

%Plot the graph
figure(3);
x=linspace(0,1,N+1)';
plot(x,U,'b--',x,u,'k--',x,E,'r')
legend('Numerical Solution','Analytic Solution')
title('Plot of -u''''(x) = cos(pi*x/2)')
xlabel('x')
ylabel('u(x)')


%Taking arbitrary number of intervals N=4
N=32;

% Let the length of one division be h
h=1/N;

% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';

%Analytic solution as done theoretically
constant=4/pi^2;
u=constant*cos(pi*x/2)+constant*x-constant;

%Computed Solution(U) is in the form AU=F
%Creating A matrix
principalDiag=[1; (2/(h^2))*(ones(N-1,1)); 1];
lowerDiag=[(-1/(h^2))*(ones(N-1,1)); 0; 0];
upperDiag=[0; 0;(-1/(h^2))*(ones(N-1,1))];
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N+1,N+1);
%spy(A)
A=full(A)

%Creating F matrix
x=x(2:N);
F=cos((pi*x)/2);

%Given u(0)=u(1)=0
F=[0; F; 0]

%Computing U
U=A\F

%Compare the analytic solution with Numerical solution
CompareSols=[u U]

%Error between analytic and numerical solution
E = abs(u-U)

%Plot the graph
figure(4);
x=linspace(0,1,N+1)';
plot(x,U,'b--',x,u,'k--',x,E,'r')
legend('Numerical Solution','Analytic Solution')
title('Plot of -u''''(x) = cos(pi*x/2)')
xlabel('x')
ylabel('u(x)')
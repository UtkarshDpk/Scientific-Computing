%To Solve the differential equation -u''+(e^(-x^2)+1)*u = cos(x) computationally and compare errors for different number of points N

%Discretizing the differential equation
%Taking arbitrary number of intervals N=16
N=16;
n=[N];

% Let the length of one division be h
h=1/N;

% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';
x=x(2:N);

%Computed Solution(U) is in the form AU=F
%Creating A matrix
principalDiag=[1; ((2+(h^2)*(exp((-x).^2)+1))/(h^2)).*(ones(N-1,1)); 1];
lowerDiag=[(-1/(h^2))*(ones(N-1,1)); 0; 0];
upperDiag=[0; 0; (-1/(h^2))*(ones(N-1,1))];
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N+1,N+1);
A=full(A)

%Creating F matrix
F=cos(x)

%Given u(0)=u(1)=0
F=[0; F; 0]

%Computing U
UatN=A\F

%Computing for 2N points
N=2*N;

% Let the length of one division be h
h=1/N;

% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';
x=x(2:N);

%Computed Solution(U) is in the form AU=F
%Creating A matrix
principalDiag=[1; ((2+(h^2)*(exp((-x).^2)+1))/(h^2)).*(ones(N-1,1)); 1];
lowerDiag=[(-1/(h^2))*(ones(N-1,1)); 0; 0];
upperDiag=[0; 0; (-1/(h^2))*(ones(N-1,1))];
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N+1,N+1);
A=full(A)

%Creating F matrix
F=cos(x)

%Given u(0)=u(1)=0
F=[0; F; 0]

%Computing U
Uat2N=A\F
Uat2N=Uat2N(1:2:end)

%Error
E = max(abs(UatN-Uat2N))






%Taking arbitrary number of intervals N=32
N=32;
n=[n;N];

% Let the length of one division be h
h=1/N;

% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';
x=x(2:N);

%Computed Solution(U) is in the form AU=F
%Creating A matrix
principalDiag=[1; ((2+(h^2)*(exp((-x).^2)+1))/(h^2)).*(ones(N-1,1)); 1];
lowerDiag=[(-1/(h^2))*(ones(N-1,1)); 0; 0];
upperDiag=[0; 0; (-1/(h^2))*(ones(N-1,1))];
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N+1,N+1);
A=full(A)

%Creating F matrix
F=cos(x)

%Given u(0)=u(1)=0
F=[0; F; 0]

%Computing U
UatN=A\F

%Computing for 2N points
N=2*N;

% Let the length of one division be h
h=1/N;

% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';
x=x(2:N);

%Computed Solution(U) is in the form AU=F
%Creating A matrix
principalDiag=[1; ((2+(h^2)*(exp((-x).^2)+1))/(h^2)).*(ones(N-1,1)); 1];
lowerDiag=[(-1/(h^2))*(ones(N-1,1)); 0; 0];
upperDiag=[0; 0; (-1/(h^2))*(ones(N-1,1))];
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N+1,N+1);
A=full(A)

%Creating F matrix
F=cos(x)

%Given u(0)=u(1)=0
F=[0; F; 0]

%Computing U
Uat2N=A\F
Uat2N=Uat2N(1:2:end)

%Error
E = [E max(abs(UatN-Uat2N))]






%Taking arbitrary number of intervals N=64
N=64;
n=[n;N];

% Let the length of one division be h
h=1/N;

% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';
x=x(2:N);

%Computed Solution(U) is in the form AU=F
%Creating A matrix
principalDiag=[1; ((2+(h^2)*(exp((-x).^2)+1))/(h^2)).*(ones(N-1,1)); 1];
lowerDiag=[(-1/(h^2))*(ones(N-1,1)); 0; 0];
upperDiag=[0; 0; (-1/(h^2))*(ones(N-1,1))];
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N+1,N+1);
A=full(A)

%Creating F matrix
F=cos(x)

%Given u(0)=u(1)=0
F=[0; F; 0]

%Computing U
UatN=A\F

%Computing for 2N points
N=2*N;

% Let the length of one division be h
h=1/N;

% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';
x=x(2:N);

%Computed Solution(U) is in the form AU=F
%Creating A matrix
principalDiag=[1; ((2+(h^2)*(exp((-x).^2)+1))/(h^2)).*(ones(N-1,1)); 1];
lowerDiag=[(-1/(h^2))*(ones(N-1,1)); 0; 0];
upperDiag=[0; 0; (-1/(h^2))*(ones(N-1,1))];
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N+1,N+1);
A=full(A)

%Creating F matrix
F=cos(x)

%Given u(0)=u(1)=0
F=[0; F; 0]

%Computing U
Uat2N=A\F
Uat2N=Uat2N(1:2:end)

%Error
E = [E max(abs(UatN-Uat2N))]





%Taking arbitrary number of intervals N=128
N=128;
n=[n;N];

% Let the length of one division be h
h=1/N;

% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';
x=x(2:N);

%Computed Solution(U) is in the form AU=F
%Creating A matrix
principalDiag=[1; ((2+(h^2)*(exp((-x).^2)+1))/(h^2)).*(ones(N-1,1)); 1];
lowerDiag=[(-1/(h^2))*(ones(N-1,1)); 0; 0];
upperDiag=[0; 0; (-1/(h^2))*(ones(N-1,1))];
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N+1,N+1);
A=full(A)

%Creating F matrix
F=cos(x)

%Given u(0)=u(1)=0
F=[0; F; 0]

%Computing U
UatN=A\F

%Computing for 2N points
N=2*N;

% Let the length of one division be h
h=1/N;

% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';
x=x(2:N);

%Computed Solution(U) is in the form AU=F
%Creating A matrix
principalDiag=[1; ((2+(h^2)*(exp((-x).^2)+1))/(h^2)).*(ones(N-1,1)); 1];
lowerDiag=[(-1/(h^2))*(ones(N-1,1)); 0; 0];
upperDiag=[0; 0; (-1/(h^2))*(ones(N-1,1))];
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N+1,N+1);
A=full(A)

%Creating F matrix
F=cos(x)

%Given u(0)=u(1)=0
F=[0; F; 0]

%Computing U
Uat2N=A\F
Uat2N=Uat2N(1:2:end)

%Error
E = [E max(abs(UatN-Uat2N))]





%Taking arbitrary number of intervals N=256
N=256;
n=[n;N];

% Let the length of one division be h
h=1/N;

% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';
x=x(2:N);

%Computed Solution(U) is in the form AU=F
%Creating A matrix
principalDiag=[1; ((2+(h^2)*(exp((-x).^2)+1))/(h^2)).*(ones(N-1,1)); 1];
lowerDiag=[(-1/(h^2))*(ones(N-1,1)); 0; 0];
upperDiag=[0; 0; (-1/(h^2))*(ones(N-1,1))];
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N+1,N+1);
A=full(A)

%Creating F matrix
F=cos(x)

%Given u(0)=u(1)=0
F=[0; F; 0]

%Computing U
UatN=A\F

%Computing for 2N points
N=2*N;

% Let the length of one division be h
h=1/N;

% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';
x=x(2:N);

%Computed Solution(U) is in the form AU=F
%Creating A matrix
principalDiag=[1; ((2+(h^2)*(exp((-x).^2)+1))/(h^2)).*(ones(N-1,1)); 1];
lowerDiag=[(-1/(h^2))*(ones(N-1,1)); 0; 0];
upperDiag=[0; 0; (-1/(h^2))*(ones(N-1,1))];
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N+1,N+1);
A=full(A)

%Creating F matrix
F=cos(x)

%Given u(0)=u(1)=0
F=[0; F; 0]

%Computing U
Uat2N=A\F
Uat2N=Uat2N(1:2:end)

%Error
E = [E max(abs(UatN-Uat2N))]





%Taking arbitrary number of intervals N=512
N=512;
n=[n;N];

% Let the length of one division be h
h=1/N;

% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';
x=x(2:N);

%Computed Solution(U) is in the form AU=F
%Creating A matrix
principalDiag=[1; ((2+(h^2)*(exp((-x).^2)+1))/(h^2)).*(ones(N-1,1)); 1];
lowerDiag=[(-1/(h^2))*(ones(N-1,1)); 0; 0];
upperDiag=[0; 0; (-1/(h^2))*(ones(N-1,1))];
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N+1,N+1);
A=full(A)

%Creating F matrix
F=cos(x)

%Given u(0)=u(1)=0
F=[0; F; 0]

%Computing U
UatN=A\F

%Computing for 2N points
N=2*N;

% Let the length of one division be h
h=1/N;

% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';
x=x(2:N);

%Computed Solution(U) is in the form AU=F
%Creating A matrix
principalDiag=[1; ((2+(h^2)*(exp((-x).^2)+1))/(h^2)).*(ones(N-1,1)); 1];
lowerDiag=[(-1/(h^2))*(ones(N-1,1)); 0; 0];
upperDiag=[0; 0; (-1/(h^2))*(ones(N-1,1))];
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N+1,N+1);
A=full(A)

%Creating F matrix
F=cos(x)

%Given u(0)=u(1)=0
F=[0; F; 0]

%Computing U
Uat2N=A\F
Uat2N=Uat2N(1:2:end)

%Error
E = [E max(abs(UatN-Uat2N))]

%Plot the graph for Error variation with different number of intervals N
figure(1);
plot(n,E,'r--')
title('Error variation with no. of intervals N')
xlabel('N(intervals)')
ylabel('Error')
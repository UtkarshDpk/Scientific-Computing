%To Solve the differential equation -u'' + f(x,u) = 0

%Assigning maximun number of iterations
k_MAX=100;
%Assigning Tolerance Limit
TOL=10^-6;
%Taking arbitrary number of intervals N=6
N=100;
% Let the length of one division be h
h=1/N;
% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';
x=x(2:N);
%Taking initial guess U0
U0=zeros(N-1,1);
k = 10^-4;

%Method 2 - Newton's Method
f=@(x,U0)(-(U0+k).^-1.5-x.*exp(4.*x));
fu=@(x,U0)(-1.5.*-(U0+k).^-2.5);

%Creating A matrix
principalDiag_A=[(-2/(h^2))*(ones(N-1,1))];
lowerDiag_A=[(1/(h^2))*(ones(N-1,1))];
upperDiag_A=[(1/(h^2))*(ones(N-1,1))];
A=spdiags([lowerDiag_A principalDiag_A upperDiag_A],-1:1,N-1,N-1);

%Creating A1 matrix
lowerDiag_A1=[(-1/(h^2))*(ones(N-1,1))];
upperDiag_A1=[(-1/(h^2))*(ones(N-1,1))];

for iterations_performed = 1:k_MAX
    principalDiag_A1=[(2/h^2+fu(x,U0)).*ones(N-1,1)];
    rhs=A*U0-f(x,U0);
    A1=spdiags([lowerDiag_A1 principalDiag_A1 upperDiag_A1],-1:1,N-1,N-1);
    v=A1\rhs;
    U1= U0+v;
    
    if(max(abs(U1-U0))>TOL)
        flag_Method2=0;
        U0 = U1;
    else
        flag_Method2=1;
        break;
    end    
end
U1=[0; U1; 0];
x=linspace(0,1,N+1);
figure(5);
plot(x,U1);
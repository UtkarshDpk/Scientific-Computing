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

%Method 1 - Fixed Point Iteration
f=@(x,U0)(-(U0+k).^-7-x.*exp(4.*x));

%Computed Solution(U) is in the form AU=F
%Creating A matrix
principalDiag=[(2/(h^2))*(ones(N-1,1))];
lowerDiag=[(-1/(h^2))*(ones(N-1,1))];
upperDiag=[(-1/(h^2))*(ones(N-1,1))];
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N-1,N-1);

for iterations_performed = 1:k_MAX
     F=-f(x,U0);
     U1=A\F;
     if(max(abs(U1-U0))>TOL)
         U0=U1;
         flag_Method1=0;
     else
         flag_Method1=1;
         break;
     end
end
U1=[0; U1; 0];
x=linspace(0,1,N+1);
figure(3);
plot(x,U1);
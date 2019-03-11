%e=eigs(A,30,'smallestabs') is working in Matlab version 2017b
%e=eigs(A,30,'sa') for Matlab 2017a but this takes time 

%Taking arbitrary number of intervals N=40
N=40;
% Let the length of one division be h
h=1/N;
%vector of N-1 numbers
n=1:N-1;
%analytical eigen values
k=n.^2.*pi^2;
%Creating A matrix
principalDiag=(2/(h^2))*(ones(N-1,1));
lowerDiag=(-1/(h^2))*(ones(N-1,1));
upperDiag=(-1/(h^2))*(ones(N-1,1));
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N-1,N-1);
%Calculate eigen values for matrix A
e=eig(A);
figure(1);
plot(n,k,'--r','linewidth',2);
hold on;
plot(n,e,'-b','linewidth',2);
xlabel('nth eigen value');
ylabel('Eigen Value');
legend('Analytical','Numerical');
title('Analytical vs Numerical Eigen Values at N=40');


%Taking arbitrary number of intervals N=80
N=80;
% Let the length of one division be h
h=1/N;
%vector of N-1 numbers
n=1:N-1;
%analytical eigen values
k=n.^2.*pi^2;
%Creating A matrix
principalDiag=(2/(h^2))*(ones(N-1,1));
lowerDiag=(-1/(h^2))*(ones(N-1,1));
upperDiag=(-1/(h^2))*(ones(N-1,1));
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N-1,N-1);
%Calculate eigen values for matrix A
e=eig(A);
figure(2);
plot(n,k,'--r','linewidth',2);
hold on;
plot(n,e,'-b','linewidth',2);
xlabel('nth eigen value');
ylabel('Eigen Value');
legend('Analytical','Numerical');
title('Analytical vs Numerical Eigen Values at N=80');


%Taking arbitrary number of intervals N=160
N=160;
% Let the length of one division be h
h=1/N;
%vector of N-1 numbers
n=1:N-1;
%analytical eigen values
k=n.^2.*pi^2;
%Creating A matrix
principalDiag=(2/(h^2))*(ones(N-1,1));
lowerDiag=(-1/(h^2))*(ones(N-1,1));
upperDiag=(-1/(h^2))*(ones(N-1,1));
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N-1,N-1);
%Calculate eigen values for matrix A
e=eig(A);
figure(3);
plot(n,k,'--r','linewidth',2);
hold on;
plot(n,e,'-b','linewidth',2);
xlabel('nth eigen value');
ylabel('Eigen Value');
legend('Analytical','Numerical');
title('Analytical vs Numerical Eigen Values at N=160');
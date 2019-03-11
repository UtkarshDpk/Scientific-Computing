%e=eigs(A,30,'smallestabs') is working in Matlab version 2017b
%e=eigs(A,30,'sa') for Matlab 2017a but this takes time 

%Taking arbitrary number of intervals N=300000
N=300000;
% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';
x=x(2:N);
% Let the length of one division be h
h=1/N;
%Creating A matrix
principalDiag=((2+(h^2)*(exp(-1*(x.^2))+1))/(h^2)).*(ones(N-1,1));
lowerDiag=(-1/(h^2))*(ones(N-1,1));
upperDiag=(-1/(h^2))*(ones(N-1,1));
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N-1,N-1);
%Calculate eigen values for matrix A
E=eigs(A,30,'smallestabs');

%vector of 30 numbers
n=1:30;


%Taking arbitrary number of intervals N=31
N=31;
% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';
x=x(2:N);
% Let the length of one division be h
h=1/N;
%Creating A matrix
principalDiag=((2+(h^2)*(exp(-1*(x.^2))+1))/(h^2)).*(ones(N-1,1));
lowerDiag=(-1/(h^2))*(ones(N-1,1));
upperDiag=(-1/(h^2))*(ones(N-1,1));
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N-1,N-1);
%Calculate eigen values for matrix A
e=eigs(A,30,'smallestabs');
%Difference in Eigen Values
diff=abs(E(30)-e(30));
figure(1);
grid on;
plot(n,e,'--ob','linewidth',1);
xlabel('nth eigen value');
ylabel('Eigen Value');
legend('Numerical');
title('Numerical Eigen Values at N=31');


%Taking arbitrary number of intervals N=60
N=60;
% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';
x=x(2:N);
% Let the length of one division be h
h=1/N;
%Creating A matrix
principalDiag=((2+(h^2)*(exp(-1*(x.^2))+1))/(h^2)).*(ones(N-1,1));
lowerDiag=(-1/(h^2))*(ones(N-1,1));
upperDiag=(-1/(h^2))*(ones(N-1,1));
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N-1,N-1);
%Calculate eigen values for matrix A
e=eigs(A,30,'smallestabs');
%Difference in Eigen Values
diff=[diff; abs(E(30)-e(30))];
figure(2);
grid on;
plot(n,e,'--ob','linewidth',1);
xlabel('nth eigen value');
ylabel('Eigen Value');
legend('Numerical');
title('Numerical Eigen Values at N=60');


%Taking arbitrary number of intervals N=300
N=300;
% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';
x=x(2:N);
% Let the length of one division be h
h=1/N;
%Creating A matrix
principalDiag=((2+(h^2)*(exp(-1*(x.^2))+1))/(h^2)).*(ones(N-1,1));
lowerDiag=(-1/(h^2))*(ones(N-1,1));
upperDiag=(-1/(h^2))*(ones(N-1,1));
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N-1,N-1);
%Calculate eigen values for matrix A
e=eigs(A,30,'smallestabs');
%Difference in Eigen Values
diff=[diff; abs(E(30)-e(30))];
figure(3);
grid on;
plot(n,e,'--ob','linewidth',1);
xlabel('nth eigen value');
ylabel('Eigen Value');
legend('Numerical');
title('Numerical Eigen Values at N=300');


%Taking arbitrary number of intervals N=3000
N=3000;
% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';
x=x(2:N);
% Let the length of one division be h
h=1/N;
%Creating A matrix
principalDiag=((2+(h^2)*(exp(-1*(x.^2))+1))/(h^2)).*(ones(N-1,1));
lowerDiag=(-1/(h^2))*(ones(N-1,1));
upperDiag=(-1/(h^2))*(ones(N-1,1));
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N-1,N-1);
%Calculate eigen values for matrix A
e=eigs(A,30,'smallestabs');
%Difference in Eigen Values
diff=[diff; abs(E(30)-e(30))];
figure(4);
grid on;
plot(n,e,'--ob','linewidth',1);
xlabel('nth eigen value');
ylabel('Eigen Value');
legend('Numerical');
title('Numerical Eigen Values at N=3000');


%Taking arbitrary number of intervals N=30000
N=30000;
% x is a vector with N+1 number of equidistant points from 0 to 1
x=linspace(0,1,N+1)';
x=x(2:N);
% Let the length of one division be h
h=1/N;
%Creating A matrix
principalDiag=((2+(h^2)*(exp(-1*(x.^2))+1))/(h^2)).*(ones(N-1,1));
lowerDiag=(-1/(h^2))*(ones(N-1,1));
upperDiag=(-1/(h^2))*(ones(N-1,1));
A=spdiags([lowerDiag principalDiag upperDiag],-1:1,N-1,N-1);
%Calculate eigen values for matrix A
e=eigs(A,30,'smallestabs');
%Difference in Eigen Values
diff=[diff; abs(E(30)-e(30))];
figure(5);
grid on;
plot(n,e,'--ob','linewidth',1);
xlabel('nth eigen value');
ylabel('Eigen Value');
legend('Numerical');
title('Numerical Eigen Values at N=30000');
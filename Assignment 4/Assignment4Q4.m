b=10;
A=[b+1,b-1;b-1,b+1];
C=cond(A);

b=100;
A=[b+1,b-1;b-1,b+1];
C=[C; cond(A)];


b=1000;
A=[b+1,b-1;b-1,b+1];
C=[C; cond(A)]
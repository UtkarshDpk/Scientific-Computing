% %----------------------h=0.1-------------------------%
% b=1000;
% h=0.1;
% A=[b+1,b-1;
%    b-1,b+1];
% y=[1;2];
% for i=1:1/h
%     y(:,i+1)=(ones(size(A))+h*A)\y(:,i);
% end
% y=y';
% ya1 = (3/2)*exp(-2*b*t)-(1/2)*exp(-2*t);
% ya2 = (3/2)*exp(-2*b*t)+(1/2)*exp(-2*t);
% 
% err = max(abs(y(end,1)-ya1(end)),abs(y(end,2)-ya2(end)));
% figure(1);
% plot(t,y(:,1),'-b',t,y(:,2),'-r',t,ya1,'--b',t,ya2,'--r')
% grid on,legend('y1','y2','ya1','ya2'),title('h=0.1');
% 
% %----------------------h=0.1/2-------------------------%
% b=1000;
% h=0.1/2;
% A=[b+1,b-1;
%    b-1,b+1];
% y=[1;2];
% for i=1:1/h-1
%     y(:,i+1)=(ones(size(A))+h*A)\y(:,i);
% end
% y=y';
% t=linspace(0,1,1/h);
% ya1 = (3/2)*exp(-2*b*t)-(1/2)*exp(-2*t);
% ya2 = (3/2)*exp(-2*b*t)+(1/2)*exp(-2*t);
% 
% err = [err; max(abs(y(end,1)-ya1(end)),abs(y(end,2)-ya2(end)))];
% figure(2);
% plot(t,y(:,1),'-b',t,y(:,2),'-r',t,ya1,'--b',t,ya2,'--r')
% grid on,legend('y1','y2','ya1','ya2'),title('h=0.1');
% 
% %----------------------h=0.1/4-------------------------%
% b=1000;
% h=0.1/4;
% A=[b+1,b-1;
%    b-1,b+1];
% y=[1;2];
% for i=1:1/h-1
%     y(:,i+1)=(ones(size(A))+h*A)\y(:,i);
% end
% y=y';
% t=linspace(0,1,1/h);
% ya1 = (3/2)*exp(-2*b*t)-(1/2)*exp(-2*t);
% ya2 = (3/2)*exp(-2*b*t)+(1/2)*exp(-2*t);
% 
% err = [err; max(abs(y(end,1)-ya1(end)),abs(y(end,2)-ya2(end)))];
% figure(3);
% plot(t,y(:,1),'-b',t,y(:,2),'-r',t,ya1,'--b',t,ya2,'--r')
% grid on,legend('y1','y2','ya1','ya2'),title('h=0.1');
% 
% %----------------------h=0.1/8-------------------------%
% b=1000;
% h=0.1/8;
% A=[b+1,b-1;
%    b-1,b+1];
% y=[1;2];
% for i=1:1/h-1
%     y(:,i+1)=(ones(size(A))+h*A)\y(:,i);
% end
% y=y';
% t=linspace(0,1,1/h);
% ya1 = (3/2)*exp(-2*b*t)-(1/2)*exp(-2*t);
% ya2 = (3/2)*exp(-2*b*t)+(1/2)*exp(-2*t);
% 
% err = [err; max(abs(y(end,1)-ya1(end)),abs(y(end,2)-ya2(end)))];
% figure(4);
% plot(t,y(:,1),'-b',t,y(:,2),'-r',t,ya1,'--b',t,ya2,'--r')
% grid on,legend('y1','y2','ya1','ya2'),title('h=0.1');

format shorte;

%----------------------h=0.1;-----------------------%
h=0.1;
[t1,y1] = ImplicitEuler([0,1],[1;2],1/h);

ya1 = (3/2)*exp(-2*b*t1)-(1/2)*exp(-2*t1);
ya2 = (3/2)*exp(-2*b*t1)+(1/2)*exp(-2*t1);
ya=[ya1',ya2'];

err2=max(abs(y1(round(end/2),:)-ya(round(end/2),:)));

figure(1);
plot(t1,y1(:,1),'-b',t1,y1(:,2),'-r',t1,ya1,'--b',t1,ya2,'--r')
title('h=0.1'), grid on, legend('y1','y2','ya1','ya2'),
axis([0,1,-0.5,2]),xlabel t, ylabel y(t);


%---------------------h=0.1/2---------------------%
h=0.1/2;
[t2,y2] = ImplicitEuler([0,1],[1;2],1/h);

ya1 = (3/2)*exp(-2*b*t2)-(1/2)*exp(-2*t2);
ya2 = (3/2)*exp(-2*b*t2)+(1/2)*exp(-2*t2);
ya=[ya1',ya2'];

err2=[err2; max(abs(y2(round(end/2),:)-ya(round(end/2),:)))];

figure(2);
plot(t2,y2(:,1),'-b',t2,y2(:,2),'-r',t2,ya1,'--b',t2,ya2,'--r')
title('h=0.1/2'), grid on, legend('y1','y2','ya1','ya2'),
axis([0,1,-0.5,2]),xlabel t, ylabel y(t);


%--------------------h=0.1/4---------------------%
h=0.1/4;
[t3,y3] = ImplicitEuler([0,1],[1;2],1/h);

ya1 = (3/2)*exp(-2*b*t3)-(1/2)*exp(-2*t3);
ya2 = (3/2)*exp(-2*b*t3)+(1/2)*exp(-2*t3);
ya=[ya1',ya2'];

err2=[err2; max(abs(y3(round(end/2),:)-ya(round(end/2),:)))];

figure(3);
plot(t3,y3(:,1),'-b',t3,y3(:,2),'-r',t3,ya1,'--b',t3,ya2,'--r'),
title('h=0.1/4'), grid on, legend('y1','y2','ya1','ya2'),
axis([0,1,-0.5,2]),xlabel t, ylabel y(t);

%------------------h=0.1/8---------------------%
h=0.1/8;
[t4,y4] = ImplicitEuler([0,1],[1;2],1/h);

ya1 = (3/2)*exp(-2*b*t4)-(1/2)*exp(-2*t4);
ya2 = (3/2)*exp(-2*b*t4)+(1/2)*exp(-2*t4);
ya=[ya1',ya2'];

err2=[err2; max(abs(y4(round(end/2),:)-ya(round(end/2),:)))];

figure(4);
plot(t4,y4(:,1),'-b',t4,y4(:,2),'-r',t4,ya1,'--b',t4,ya2,'--r')
title('h=0.1/8'), grid on, legend('y1','y2','ya1','ya2'),
axis([0,1,-0.5,2]),xlabel t, ylabel y(t);
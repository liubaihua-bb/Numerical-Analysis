X=[0 25 50 75 100 125];

Y=[0 32 58 78 92 100];

x=0:1:125;

y=interp1(X,Y,x,'spline');

plot(X,Y,x,y,X,Y);

xlabel('X');
ylabel('Y');
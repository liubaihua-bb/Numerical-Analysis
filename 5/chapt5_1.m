X=[0,3,5,7,9,11,12,13,14,15];

Y=[0,1.2,1.7,2.0,2.1,2.0,1.7,1.2,1.3,1.6];

x=0:0.1:15;

y=interp1(X,Y,x,'spline');

plot(X,Y,x,y,X,Y);

xlabel('X');
ylabel('Y');
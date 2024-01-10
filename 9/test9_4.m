f=@(x,y) 0.0025*y;
y0=1;
N=10;
a=0;b=10;
[x,y]=odeEuler(f,y0,a,b,N);
disp(x);
disp(y);
f=@(x,y) 1-y;
y0=0;
N=5;
a=0;b=1;
[x,y]=R_K4(f,y0,a,b,N);
disp(x);
disp(y);
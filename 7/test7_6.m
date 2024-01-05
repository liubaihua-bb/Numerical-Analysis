%牛顿法
f=@(x) x^2+log(x)-4;
d=@(x) 2*x+1/x;
result=@(x) x-f(x)/d(x);
x=0.5;
%x=result(x)
%牛顿法
f=@(x) x+4*cos(x)-3;
d=@(x) 1-4*sin(x);
result=@(x) x-f(x)/d(x);
x=-0.5;
%x=result(x)
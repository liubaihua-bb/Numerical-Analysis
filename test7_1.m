%割线法

f = @(x) x-cos(x)-2;
d=@(x1,x2) (f(x1)-f(x2))/(x1-x2);
x0=1;x1=2;
x2=x1-f(x1)/d(x1,x0);
x3=x2-f(x2)/d(x2,x1);
x4=x3-f(x3)/d(x3,x2);
x5=x4-f(x4)/d(x4,x3);
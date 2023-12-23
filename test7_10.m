f = @(x) x-cos(x);
d = @(x) 1+sin(x);
result=@(x) x-f(x)/d(x);
x=3;
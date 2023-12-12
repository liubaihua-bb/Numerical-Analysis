fun = @(x) 1/2*(x+1)/(1+1/4*(x+1).^2);
y=5/9*fun(-sqrt(3/5))+8/9*fun(0)+5/9*fun(sqrt(3/5));
result=1/2*y
fun = @(x) x./(1+x.^2);
result = integral(fun,0,1)
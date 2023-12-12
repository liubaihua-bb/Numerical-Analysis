fun = @(x) (sin(pi*x)+0.050465-4.1225*x+4.1225*x.^2).^2; 

result = integral(fun, 0, 1);
% 数值函数的情况
fun = @(x) x.^(8/3)./sqrt(1-x.^2); % 你要积分的函数
%fun = @(x) exp(x).*x./sqrt(1-x.^2); % 你要积分的函数
%fun = @(x) x.^(2/3).*cos(2*acos(x))./sqrt(1-x.^2); % 你要积分的函数
%a = -1; % 积分下限
%m = 0;%数值计算误差中间点
%b = 1; % 积分上限
result = integral(fun, 0, 1);
%fun2 = @(x) -(-x).^(5/3)./sqrt(1-(-x).^2); 
%result2 = integral(fun2, a, m);
%result = result1 + result2;
result = result*4/pi;
%disp(result);

%fun1 = @(x) x.^(2/3).*cos(2*acos(x))./sqrt(1-x.^2); % 你要积分的函数
%a = -1; % 积分下限
%m = 0;%数值计算误差中间点
%b = 1; % 积分上限
%result1 = integral(fun1, m, b);

%fun2 = @(x) (-x).^(2/3).*cos(2*acos(x))./sqrt(1-(-x).^2); % 你要积分的函数
%result2 = integral(fun2, a, m);
%result = result1 + result2;
%result = result*2/pi;
%disp(result);

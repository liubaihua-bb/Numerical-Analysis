% 输入已知点的坐标和函数值
x = [0, 1, 2];
y = 1./(1+25*x.^2); % 替换为实际的函数f(x)表达式

% 要进行插值的点
x_interpolate = 0:0.1:2; % 例如，从0到2间隔0.1的点

% 利用分段线性插值求插值函数
y_interpolate = interp1(x, y, x_interpolate, 'linear');

% 绘制原始函数和插值结果
plot(x, y, 'o', x_interpolate, y_interpolate, '-');
legend('已知点', '插值结果');
xlabel('x');
ylabel('f(x)');
title('分段线性插值');

% 想要插值的点
x_interpolate_point = 0.5;

% 利用分段线性插值求插值结果
y_interpolate_point = interp1(x, y, x_interpolate_point, 'linear');

disp(['在 x = ', num2str(x_interpolate_point), ' 处的插值结果为: ', num2str(y_interpolate_point)]);

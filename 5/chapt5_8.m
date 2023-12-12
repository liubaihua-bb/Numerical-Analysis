% 引入插值函数
X = [0,2,4,5,6,7,8,9,10.5,11.5,12.5,14,16,17,18,19,20,21,22,23,24];
Y = [2,2,0,2,5,8,25,12,5,10,12,7,9,28,22,10,9,11,8,9,3];

xnew = linspace(0, 24, 24 * 60);
% 选择样条插值
ynew = interp1(X, Y, xnew, 'spline');

% 绘制插值曲线
plot(xnew, ynew, 'b');
grid on;  % 设置网格线
xlabel('时间');
ylabel('车辆数量');
title('车辆数量插值');

% 计算一天的车辆总数
total_cars = sum(ynew);
disp(['一天总共: ' num2str(total_cars) ' 辆车']);

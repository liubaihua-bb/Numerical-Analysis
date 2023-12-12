function [it, w_best] = sor()
% SOR函数：使用逐次超松弛法（Successive Over-Relaxation, SOR）解线性方程组
% 输入参数：
%   A: 系数矩阵
%   b: 右侧向量
%   w: 松弛因子，可选，默认为范围从0.1到1.9的19个值
%   maxit: 最大迭代次数，可选，默认为20000
% 输出参数：
%   it: 每个松弛因子下的迭代次数
%   w_best: 最佳松弛因子

maxit = 20000;
w = linspace(0.1, 1.9, 19);
b = [41 52 12]';
A = [-55 -5 12; 21 36 -8; 24 7 47];

n = length(b); % 计算右侧向量b的长度，即线性方程组的阶数
it = zeros(size(w));
for k = 1:length(w)
    x_old = zeros(n, 1); % 初始化解向量
    it(k) = 0; % 初始化迭代次数
    convg = 0; % 收敛标志
    while ~convg
        it(k) = it(k) + 1; % 迭代次数加1
        x = x_old;
        % SOR迭代公式
        for j = 1:n
            x(j) = x(j) + w(k) / A(j, j) * (b(j) - A(j, :) * x);
        end
        % 检查收敛条件
        if norm(x - x_old) < 1e-4
            convg = 1; % 收敛
        else
            x_old = x;
        end
        % 检查是否达到最大迭代次数
        if it(k) > maxit
            it(k) = inf; % 无穷大表示未收敛
            convg = 1; % 强制退出循环
        end
    end
end

[~, index] = min(it); % 找到最小迭代次数及其对应的索引
w_best = w(index); % 最佳松弛因子

% 去除 inf 值
valid_it = it(isfinite(it));
valid_w = w(isfinite(it));

% 使用 bar 函数绘制柱状图
bar(valid_w, valid_it);

% 添加标题和标签
title('SOR Iteration Count for Different w');
xlabel('w');
ylabel('Iteration Count');


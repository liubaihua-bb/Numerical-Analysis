function [A] = compose5(n)
% 生成对角元素为非完全平方数的平方的矩阵A
A = diag(findNonPerfectSquares(n));

% 将满足行号减去列号的绝对值是3的非负幂次的元素设置为1
alpha=floor(log(n)/log(3));
for i=0:alpha
    A=A+diag(ones(n-3^i,1),3^i)+diag(ones(n-3^i,1),-3^i);
end
end

function [BG] = GS(A)
%GS 高斯迭代矩阵
%   此处显示详细说明
D=diag(diag(A));
L=-tril(A,-1);
U=-triu(A,1);
BG=inv(D-L)*U;
end


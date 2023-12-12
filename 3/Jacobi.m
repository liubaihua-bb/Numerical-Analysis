function [BJ] = Jacobi(A)
%JACOBI 雅可比分解
%   此处显示详细说明
D=diag(diag(A));
inv_D=inv(D);
L=-tril(A,-1);
U=-triu(A,1);
BJ=inv_D*(L+U);
end


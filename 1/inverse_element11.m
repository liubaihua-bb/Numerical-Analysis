function inverse_element = inverse_element11(n)
    % 构造矩阵A
    A = 5 * eye(n) - 1 * diag(ones(n-1, 1), 1) - 1 * diag(ones(n-1, 1), -1);
    
    % AX=e1，e1即单位矩阵的第一列
    e1 = zeros(n, 1);
    e1(1) = 1;
    
    % 解线性方程以计算X，X是逆矩阵的第一列
    X = A \ e1;
    
    % 提取（1,1）元素
    inverse_element = X(1);

    fprintf('%.16f\n',inverse_element);
end

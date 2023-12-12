function inverse_val = inv_val(n)
    % 构造矩阵A
    A = 5 * eye(n) - 1 * diag(ones(n-1, 1), 1) - 1 * diag(ones(n-1, 1), -1);
    
    % 计算矩阵A的逆矩阵
    inv_A = inv(A);
    
    % 提取（1,1）元素
    inverse_val = inv_A(1, 1);
    fprintf('%.16f\n',inverse_val);
end

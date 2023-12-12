function x = Gauss1(A, b)
%高斯消去法

    % 输入：矩阵 A 和向量 b
    % 输出：解向量 x
    
    n = size(A,1);
        
    % 检查矩阵 A 是否为满秩
    if rank(A) < n
        error('矩阵 A 不是满秩矩阵');
    end

    % 增广矩阵
    Ab = [A, b];
    
    % 高斯消去
    for k = 1:n-1
        for i = k+1:n
            factor = Ab(i, k) / Ab(k, k);
            Ab(i, k:n+1) = Ab(i, k:n+1) - factor * Ab(k, k:n+1);
        end
    end
    
    % 回代
    x = zeros(n, 1);
    for i = n:-1:1
        x(i) = (Ab(i, n+1) - Ab(i, i+1:n) * x(i+1:n)) / Ab(i, i);
    end
end

function x = Gauss2(A, b)
%列主元高斯消去法

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
        % 选取主元所在列的绝对值最大的行
        [~, pivot_row] = max(abs(Ab(k:n, k)));
        pivot_row = pivot_row + k - 1;
        
        % 交换当前行和主元所在行
        Ab([k, pivot_row], :) = Ab([pivot_row, k], :);
        
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

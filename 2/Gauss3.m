function x = Gauss3(A, b)
%全主元高斯消去法

    % 输入：矩阵 A 和向量 b
    % 输出：解向量 x
    
    % 检查矩阵 A 是否为方阵
    [m, n] = size(A);
    if m ~= n
        error('矩阵 A 不是方阵');
    end
    
    % 检查矩阵 A 是否为满秩
    if rank(A) < n
        error('矩阵 A 不是满秩矩阵');
    end
    

    % 初始化排列向量
    p = 1:n;

    % 增广矩阵
    Ab = [A, b];
    
    % 高斯消去
    for k = 1:n-1
        %disp(Ab);disp('Ab');
        %disp('行列');disp(k);
        % 选取主元所在列和行的绝对值最大的元素
        temp = abs(Ab(k:n, k:n));
        [~, index] = max(temp(:));%伸展为列向量后找最大值
        [row, col] = ind2sub(size(Ab(k:n, k:n)), index);%一维转二维
        row = row + k - 1;
        col = col + k - 1;
        %disp('max_row');disp(max_row);
        %disp('max_col');disp(max_col);
        % 交换当前行和主元所在行
        Ab([k, row], :) = Ab([row, k], :);
        %disp('换行');
        %disp(Ab);
        % 交换当前列和主元所在列
        Ab(:, [k, col]) = Ab(:, [col, k]);
        %disp('换列');
        %disp(Ab);
        p([k, col]) = p([col, k]);
        %disp('p');disp(p);

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
    %disp('x');disp(x);


    % 根据排列向量p重排解向量x
    x(p) = x;
end

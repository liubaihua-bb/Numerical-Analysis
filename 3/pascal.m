function  [A,x]= pascal(A)
%高斯消去法将pascal矩阵最后一个元素改成？可以使得该矩阵不可逆
%原本的元素减去输出的x即是答案

    n = size(A,1);

    % 增广矩阵
    x=0;
    % 高斯消去
    for k = 1:n-1
        for i = k+1:n
            factor = A(i, k) / A(k, k);
            A(i, k:n) = A(i, k:n) - factor * A(k, k:n);
            %disp(A);
            if i==n
                x=x+factor * A(k, n);
                %disp(x);
            end
        end
    end
 
end

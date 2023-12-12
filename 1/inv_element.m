function invA11 = inv_element(n)
    % 创建矩阵A
    A = diag(5*ones(1,n)) + diag(-1*ones(1,n-1),1) + diag(-1*ones(1,n-1),-1);
    
    % 计算矩阵A的逆
    invA = inv(A);
    
    % 获取逆矩阵的（1，1）元素
    invA11 = invA(1,1);
    
    % 输出小数点后16位
    fprintf('%.16f\n', invA11);
end

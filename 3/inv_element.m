function result = inv_element(A,n)
% AX=b，b即单位矩阵的第一列
e1 = zeros(n, 1);
e1(1) = 1;

% 解线性方程以计算X，X是逆矩阵的第一列
X = A \ e1;

%x = zeros(n, 1);
%iter = 0;
%maxIter = 20000;
%while iter < maxIter
   % x_old = x;
  %  for i = 1:n
       % sigma = A(i, 1:i-1) * x(1:i-1) + A(i, i+1:end) * x_old(i+1:end);
        %x(i) = (b(i) - sigma) / A(i, i);
  %  end

    % 判断是否满足误差要求
   % if norm(x - x_old, inf) < 1e-4
    %    disp(['Converged in ', num2str(iter), ' iterations.']);
    %    break;
   % end
%
  %  iter = iter + 1;
%end
% 提取（1,1）元素
% disp(x);
%result = x(1);
end


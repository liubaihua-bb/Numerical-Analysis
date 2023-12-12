function [x] = block(n)
% 构造矩阵B
B = 4 * eye(n) - 1 * diag(ones(n-1, 1), 1) - 1 * diag(ones(n-1, 1), -1);
L={};U={};
L{1}=B;
for i=1:n-1
    U{i}=-inv(L{i});
    L{i+1}=B+U{i};
end
d=1:n^2;
D=cell(1,n);
Y=cell(1,n);
X=cell(1,n);
for i=1:n
    startIndex=(i-1)*n+1;
    endIndex=i*n;
    D{i}=d(startIndex:endIndex);
    D{i}=D{i}';
    Y{i}=ones(1,n);
    Y{i}=Y{i}';
    X{i}=Y{i};
    if i==1
        Y{i}=L{i}\D{i};
    else
        Y{i}=L{i}\(D{i}+Y{i-1});
    end
end
X{n}=Y{n};
for i=n-1:-1:1
    X{i}=Y{i}-U{i}*X{i+1};
end
x=[];
for i=1:n
    x=[x;X{i}];
end
end

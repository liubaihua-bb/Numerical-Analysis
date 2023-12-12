
n=8;
x=1:8;
x=x';
y=[14 30 55 91 140 204 285 385]'; % 函数f(x)得到的对应y值
%disp(size(y));disp(y);
%disp(x);

% 计算差商
for j=2:n
    deltay=diff(y(1:n+2-j,j-1));
    %disp(deltay);
    deltax=x(j:n)-x(1:n+1-j);
    %disp(deltax);
    y(1:n+1-j,j)=deltay;%不断更新差商
    %disp(size(y));disp(y);
end

a=y(1,:); % 差商表的第一行,即插值系数

    


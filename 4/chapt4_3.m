n=4; 
x=[0 1 2 3]';
y=(x-1).*(3*x-2).*(5*x+7);
disp(y);
%disp(size(y));
%disp(x);

% 计算差商
for j=2:n
    deltay=diff(y(1:n+2-j,j-1));
    %disp(deltay);
    deltax=x(j:n)-x(1:n+1-j);
    %disp(deltax);
    y(1:n+1-j,j)=deltay./deltax;%不断更新差商
    %disp(size(y));disp(y);
end

a=y(1,:); % 差商表的第一行,即插值系数

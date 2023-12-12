n=3; 
x=[0.5 0.6 0.7]';
y=[0.47943 0.56464 0.64422]';

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
v=0.57681;
temp=a(n);
for j=n-1:-1:1
    temp=temp*(v-x(j))+a(j);
end
%disp(result);
%disp(value);
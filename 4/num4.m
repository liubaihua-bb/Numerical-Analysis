function num4()
    % 4 CHAPTER 4 NUMBER 4
    %   此处显示详细说明

    n=21; % 等距节点数量
    %x=linspace(-5,5,n)'; % 21个等距节点
    x=5*cos(pi/(n-1)*(0:n-1)');
    % h=(5-(-5))/(n-1); % 节点间距h
    y=1./(1+25*x.^2); % 函数f(x)得到的对应y值
    %disp(size(y));disp(y);
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
    
    result=[]; % 用于存储插值结果
    value=linspace(-5,5,80); % 生成80个在-5到5之间的等距值，用于插值计算
    
    % 对每个插值点进行插值运算
    for v=value
        temp=a(n);
        for j=n-1:-1:1
            temp=temp*(v-x(j))+a(j);
        end
        result=[result temp];
    end
    %disp(result);
    %disp(value);
    
    % 绘制插值结果和原始函数图像
    plot(value,result,'r+-',value,1./(1+value.^2),'g--');
end

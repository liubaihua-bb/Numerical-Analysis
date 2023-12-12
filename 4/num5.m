function num5(n, c)
    % CHAPTER 4 NUMBER 5
    %   此处显示详细说明

    % 输入：等距节点数量n, 向量c
    
    t=2:n+1;
    y=c;
    
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

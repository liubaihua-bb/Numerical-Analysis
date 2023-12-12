function hyper(a, b, c)
    % 创建网格点
    [x, y, z] = meshgrid(linspace(-10, 10, 100), linspace(-10, 10, 100), linspace(-10, 10, 100));

    % 计算双曲面方程
    F = (x.^2 / a^2) - (y.^2 / b^2) - (z.^2 / c^2) - 1;

    % 绘制双曲面
    isosurface(x, y, z, F, 0);
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    title('hyper');

    % 设置坐标轴相等，以确保双曲面比例正确
    axis equal;

    % 显示图形
    grid on;
    view(3);
end

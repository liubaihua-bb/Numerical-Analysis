
fun = @(x) x.^4 .* (1 - x).^4 ./ (1 + x.^2);

a = 0;
b = 1;
nodes = zeros(20, 1);
accuracy = zeros(20, 1);
exact_value = integral(fun, 0, 1);
for n = 1:20
    N = 2^n + 1;  
    nodes(n) = N; 
    
    I = fsimpson(fun, a, b, N);
    accuracy(n) = abs(I - exact_value);
end

figure;
nodes = 1:20;
semilogy(nodes, accuracy, '-o');
xlabel('Number of Nodes (N)');
ylabel('Integration Accuracy');
title('Integration Accuracy vs. Number of Nodes');
grid on;

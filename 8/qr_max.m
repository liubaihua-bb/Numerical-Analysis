function a = qr_max(A)
    n = size(A, 1);
    eigenvalues = zeros(n, 1);
    max_iterations = 1e4;
    tol=1e-5;
    for k = 1:max_iterations
        [Q, R] = qr(A);
        A = R * Q;

        % Extract eigenvalues from the diagonal of the updated A
        eigenvalues = diag(A);

        % Check for convergence
        if norm(triu(A, 1), 'fro') < tol
            break;
        end
    end
    a=max(abs(eigenvalues));
    disp(a);
end

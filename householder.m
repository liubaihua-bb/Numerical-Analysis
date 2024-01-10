I = eye(3);
x = [2 3 1]';e1=[1 0 0]';
k = -norm(x,2);
u = x-k*e1;
U = u*u';
c = norm(u,2);
b = 2/c^2;
P = I-b*U;
function c=cond_qr(n,tol)
A=diag(-ones(n-1,1),-1)+diag(-ones(n-1,1),1)+diag(2*ones(n,1));
k=1;
A0=zeros(n);
while norm(diag(A-A0))>tol
    k=k+1;
    A0=A;
    [q,r]=qr(A);
    A=r*q;
end
t=diag(A);
c=max(abs(t))/min(abs(t));

i=0;
tol=1e-5;
u0=1;k0=1;a0=1.8365;
u=u0;k=k0;a=a0;
while norm(a-1) > tol
    b=u*[0 0 5 4 3 2 0.5 0]';
    s=[0.85 0.92 0.91*k 0.87*k 0.83*k 0.76*k 0.66*k]';
    A=diag(s,-1);A(1,:)=b;
    disp(A);
    a=qr_max(A);
    u=u/a;k=k/a;
    i=i+1;
end
u
k




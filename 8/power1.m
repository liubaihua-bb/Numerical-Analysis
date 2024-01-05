function a = power1(A)
tol=1e-5;
[n,~]=size(A);
u=ones(n,1);
q=max(abs(u));
i=0;
while true
    y=A*u;
    q0=q;
    q=max(abs(y));
    if abs(q-q0)<tol || i>1e4
        break;
    end
    u=y/q;
    i=i+1;
end
a=q;
disp(a);
end




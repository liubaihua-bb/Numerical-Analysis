tol=1e-10;
c=zeros(20,1);
for i=1:20
    c(i)=cond_qr(2*i,tol);
end
disp(c)
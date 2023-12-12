function result = main5(n)
t0=cputime;
A=compose5(n);
%disp(A);
%result=inv_element(A,n);
%fprintf('%.10f\n',result);
result=0;
disp(cputime-t0);
end


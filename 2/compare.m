function [] = compare(n)
H=hilb(n);
d=1:n;
d=d';
x=H\d;
x1=Gauss1(H,d);
x2=Gauss2(H,d);
x3=Gauss3(H,d);
x4=Gauss4(H,d);
disp(norm(x));
re_error1=norm(x1-x)/norm(x);
re_error2=norm(x2-x)/norm(x);
re_error3=norm(x3-x)/norm(x);
re_error4=norm(x4-x)/norm(x);

disp('re_error1:');disp(re_error1);
disp('re_error2:');disp(re_error2);
disp('re_error3:');disp(re_error3);
disp('re_error4:');disp(re_error4);

end


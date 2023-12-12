function[] = main(n,num)
H=hilb(n);
%disp('H');
%disp(H);
d=1:n;
d=d';
%disp('d');
%disp(d);
switch num
    case 0
        x=hello(H,d);
    case 1
        x=Gauss1(H,d);
    case 2
        x=Gauss2(H,d);
    case 3
        x=Gauss3(H,d);
    case 4
        x=Gauss4(H,d);
    otherwise
        error('unknown num')
end
disp('x');
disp(x);

disp('H*x');
disp(H*x);
end


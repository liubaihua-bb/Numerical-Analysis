for k=0:0.0000001:0.1
    f=@(x,y) -k*(y-200);
    y0=20;
    N=30;
    a=0;b=30;
    [x,y]=odeEuler(f,y0,a,b,N);
    disp(abs(y(31)-120));
    if abs(y(31)-120) < 1e-4
        disp(x);
        disp(y);
        break;
    end
end
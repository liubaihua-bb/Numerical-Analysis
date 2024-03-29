function [x,y] = R_K4(f,y0,a,b,n)
    y(1)=y0;
    h=(b-a)/n;
    x=a:h:b;
    for i=1:n
        k1=h*feval(f,x(i),y(i));
        k2=h*feval(f,x(i)+0.5*h,y(i)+0.5*k1);
        k3=h*feval(f,x(i)+0.5*h,y(i)+0.5*k2);
        k4=h*feval(f,x(i)+h,y(i)+k3);
        y(i+1)=y(i)+(k1+2*k2+2*k3+k4)/6;
    end
end


A = [2 1 0;1 3 1; 0 1 4];
I = eye(3);
B = A-1.2*I;
u=[1 0.5 -0.5]';
v1=B\u;
u1=v1/max(v1);
v2=B\u1;
u2=v2/max(v2);
v3=B\u2;
u3=v3/max(v3);
v4=B\u3;
u4=v4/max(v4);
v5=B\u4;
disp(1/max(v4)-1/max(v5));
disp(1/max(v5));
u5=v5/max(v5);
result=1.2+1/max(v5)
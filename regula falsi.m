clear;
clc;
error=0.01;
b=0.1;
a=0.9;
fb=fbi(b);
fa=fbi(a);
maxter=7;
disp('iterasi   x      error');
disp('---------------------------------------------------------');
for n=1:maxter
    x=a-((fbi(a)*(a-b))/(fbi(a)-fbi(b)));
    fx=fbi(x);
    error=abs(fx);
    fprintf('%2d   %2.6f   %2.6f\n',n,x,error)
if fb*fx<0
    a=x;
    fa=fbi(x);
    b=b;
    fb=fbi(b);
else
    b=x;
    fb=fx;
    a=a;
    fa=fbi(a);
end
end
disp('-------------------------------------------------------')
fprintf('%2d   %2.6f   %2.6f\n',n,x,error)

x=45;
er=0.0001;
maxter=10;
disp("iterasi   x   error");
disp("------------------------------");
for i=1:maxter
    x=x-(fg(x)/tf(x));
    error=abs(fg(x));
    fprintf('%2d   %2.4f   %2.4f\n',i,x,error);
end
 
     
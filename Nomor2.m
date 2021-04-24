clear; clc;

p=[10 20 30 40 50 60 70 80 90 100 110 120];
S=[0.18 0.40 0.65 0.80 0.87 0.92 0.94 0.95 0.95 0.96 0.96 0.97];
m=length(p); x=0; x2=0; y=0; xy=0;

for i=1:m
  Y(i)=log(S(i)/(1-S(i)));
  X(i)=log(p(i));
endfor

for i=1:m
  x=x+X(i);
  x2=x2+X(i)*X(i);
  y=y+Y(i);
  xy=xy+(X(i)*Y(i));
endfor

M=[x2 x; x m]; N=[xy ; y];
ab=inv(M)*N; a=ab(1); b=ab(2); n=b;

for i=1:m
  y3(i)=(a*X(i))+b;
endfor

figure(1);

plot(X,Y,'*', X,y3);title('Fungsi Linearisasi dan Regresi Linear');
p50=e.^(-a/b);

for i=1:m
  xam(i)=(p(i)^n)/((p50^n)+(p(i)^n));
endfor

figure(2);

plot(p,S,'*',p,xam);title('Fungsi tanpa Linearisasi');
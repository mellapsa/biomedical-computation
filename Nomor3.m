clear;
clc;

x = [8, 17, 20, 25, 31, 42, 50, 59, 65, 72, 80];
y = [100, 130, 209, 276, 330, 359, 420, 487, 550, 645, 700];
n = length(x);

sig4x=0;sig3x=0;sig2x=0;sigx=0;sigx2y=0;sigxy=0;sigy=0;

for i=1:n
  sig4x=sig4x+x(i).^4;
  sig3x=sig3x+x(i).^3;
  sig2x=sig2x+x(i).^2;
  sigx=sigx+x(i);
  sigx2y=sigx2y+x(i)*x(i)*y(i);
  sigxy=sigxy+x(i)*y(i);
  sigy=sigy+y(i);
endfor

AA = [sig4x sig3x sig2x; sig3x sig2x sigx; sig2x sigx n];
BB = [sigx2y; sigxy; sigy];
ab = inv(AA)*BB;
a = ab(1);
b = ab(2);
c = ab(3);
f = a*(x.^2)+b*x+c;
plot(x,y,'*',x,f);title('Regresi Linear');

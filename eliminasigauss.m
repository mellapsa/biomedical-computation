clear;clc;
history -c
for r= 0.6:0.05:0.95
  R=r;
  A= [0.5*r 1.5*r-3.262679792;-18.19328318 0.5;];
  B= [-0.7 ;-2.8175];
 
  %-------------Eliminasi----------------%
[m, n] =size(A);
for eli = 1:m-1 %eliminasi dimuali dari 1 sampai baris ke-(m-1)
for i=eli+1:m %looping iterasi dari jumlah eli s.d. jumlah baris
      pivot= (A(i,eli)/A(eli,eli)); % mendapatkan pivot
for j=1:n % kolom dimulai dari 1 s.d n
        A(i,j)=A(i,j)-pivot*A(eli,j); % memperoleh martiks baru 
end
      B(i)=B(i)-pivot*B(eli);% mencari nilai dari matriks hasil
end
      
    %-----------Subtitusi Balik------------%
x(2)=B(2)/A(2,2); %memperoleh nilai akar
for i=1:-1:1 %perulangan mundur iterasi dari akar paling bawah ke atas
  sigma=0;
for j=i+1:m %perulangan untuk memperoleh nilai j untuk persamaan subs. balik
     sigma= sigma+A(i,j)*x(j);
end
    x(i)=(B(i)-sigma)/A(i,i);
    x;
end
end
end

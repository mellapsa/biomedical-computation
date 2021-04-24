clear;clc;

%Define Variables
X=[8 17 20 25 31 42 50 59 65 72 80];
Y=[100 130 209 276 330 359 420 487 550 645 700];
m=length(X); n=length(Y);
sigX=0;sigXX=0;sigY=0;sigXY=0;

%Getting the Sum function
for i=1:m
  sigX=sigX+X(i);
  sigXX=sigXX+(X(i)^2);
  sigY=sigY+(Y(i));
  sigXY=sigXY+(Y(i)*X(i));
endfor

%Making the matrix
M=[m sigX; sigX sigXX]; N=[sigY; sigXY]
%Regression Function
C=inv(M)*N;

%Defining y function
for i=1:m
  y2(i)=C(2)*X(i)+C(1);
endfor

%Plotting
figure(1);
plot(X,y2,'--',X,Y,'o');
hold on;
title('Regresi Linear');

%problema 7
syms x
f=exp(-x)-x;
n=10;
x0=0;
tol=10^(-8);
newton(f,x0,n,tol)
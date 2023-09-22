syms x
f=1.5*6*x^6-8*x^3+12;
x0=1;
n=100;
tol=10^(-8);
newton(f,x0,n,tol)
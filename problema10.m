clear all
clc
syms x
%problema 10
%inciso ai
f= x^3-2*x+2
x0=-1.5;
x1=0;
x2=0.5;
x3=1.5;
tol=10^(-5);
n=10;
newton(f,x0,n,tol)
newton(f,x1,n,tol)
newton(f,x2,n,tol)
newton(f,x3,n,tol)
%inciso aii
xl=-5;
xu=5;
g=matlabFunction(f);
biseccion(g,xl,xu,tol,n)



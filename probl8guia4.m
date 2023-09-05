clear all
clc
%problema 8
f=@(x) exp(-x)-x;
n=5;
x0=0;
x1=1;
tol=10^(-8);
secante(f,x0,x1,n,tol)
clear all
clc
%punto 4
n=11;
tol=1.5;
f=@(x) exp(-x);
x0=0;
puntofijo(f,x0,n,tol)

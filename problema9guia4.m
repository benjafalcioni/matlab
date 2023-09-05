clc
clear all
syms x
f=(x-1)^10;
g=(x-1)^9;
fpf= matlabFunction((x-1)^10+x);
gpf=matlabFunction((x-1)^9+x);
fsec=matlabFunction(f);
gsec=matlabFunction(g);
tol=10^(-6);
xl=0.1;
xu=2;
x0=0.1;
x00=0.05;
n=1000;


secante(fsec,x00,x0,n,tol);
newt=newton(f,x0,n,tol);
puntf=puntofijo(fpf,x0,n,tol);
conve=convergencia(x0,f);
regfalsi=regulafalsi(fsec,xl,xu,tol,n);
bisec=biseccion(fsec,xl,xu,tol,n);
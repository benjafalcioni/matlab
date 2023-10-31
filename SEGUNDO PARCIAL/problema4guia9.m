clc 
clear all
%problema4
%inciso a
f=@(x) 6+x+7*x^2+x^3-x^4;
a=fzero(f,5);
p=linspace(0,a,7)
x0=p(1);
x1=p(2);
x2=p(3);
x3=p(4);
x4=p(5);
x5=p(6);
x6=p(7);
h=(x6-x0)/6;
I38multiple=3/8*(x6-x0)/6*(f(x0)+3*(f(x1)+f(x4))+3*(f(x2)+f(x5))+2*(f(x3))+f(x6))
%inciso b
%-24 es la derivada 4ta del polinomio
f4=-24
Eaprox=-1/80*(x6-x0)^5/6^4*(-24)
%inciso c
Ecota=-1/80*(x6-x0)^5/6^4*(-24)
%inciso d
syms x
fs=6+x+7*x^2+x^3-x^4;
Vreal=int(fs,x0,x6);
Ereal=vpa(Vreal-I38multiple)
%los 3 errores son iguales practicamente :)


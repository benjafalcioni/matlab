clc
clear all
%problema 9
x=[0 0.75 1.5 2 2.5 3];
y=[2 2.8 2.45 2.2 2.75 2.5];
%inciso a
h1=(x(3)-x(1))/2;
h2=(x(6)-x(3))/3;
I13=vpa(h1/3*(y(1)+4*y(2)+y(3)));
I38=vpa(3*h2/8*((y(3)+3*y(4)+3*y(5)+y(6))));
Intaprox=I13+I38
%inciso b
F4=@(X)-61.359*X+89.979;
fplot(F4,[x(1),x(6)])
syms X
f4=-61.359*X+89.979;
f5=diff(f4);
f4x1=int(f4,x(1),x(3))/(x(3)-x(1));
f4x2=int(f4,x(3),x(6))/(x(6)-x(3));
puntomax=linsolve(f5,0);
error1=vpa(abs(-1/180*f4x1*(x(3)-x(1))*h1^4));
error2=vpa(abs(-1/6480*f4x2*(x(6)-x(3))^5));
etotal=error1+error2
%inciso c
Errorcota1=vpa(abs(-1/180*F4(puntomax)*(x(3)-x(1))*h1^4));
Errorcota2=vpa(abs(-1/6480*F4(puntomax)*(x(6)-x(3))^5));
Errorcota=max(Errorcota1,Errorcota2)






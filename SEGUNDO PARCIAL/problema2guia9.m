%problema 2
f=@(x) 6+x+7*x^2+x^3-x^4;
a=fzero(f,5);
x0=0;
x1=a/4;
x2=a/2;
x3=a*3/4;
x4=a;
h=(x4-x0)/4;
Isimpson=h/3*(f(x0)+4*(f(x1)+f(x3))+2*f(x2)+f(x4))
%inciso b
syms x
fs=6+x+7*x^2+x^3-x^4;
f4=diff(fs,4);
f4v=int(f4,x0,x4)/(x4-x0)
Eaprox=vpa(-1/180*h^4*2*f4v)
%inciso c
Ecota=vpa(abs(-1/180*(x4-x0)^5/4^4*f4))
%inciso d
Vreal=int(fs,x0,x4);
Errorv=vpa(Vreal-Isimpson)





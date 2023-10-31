%Problema 3
f=@(x) 6+x+7*x^2+x^3-x^4;
a=fzero(f,5);
x0=0;
x1=a/3;
x2=a*2/3;
x3=a;
h=(x3-x0)/3;
Isimpson=3*h/8*((f(x0)+3*f(x1)+3*f(x2)+2*f(x3)))
syms x
fs= 6+x+7*x^2+x^3-x^4;
f4=diff(fs,4);
Ecota=vpa(-1/6480*(f4)*h^5)
%inciso b



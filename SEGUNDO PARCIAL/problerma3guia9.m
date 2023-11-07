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
p=linspace(0,a,6);
x0=p(1);
x1=p(2);
x2=p(3);
x3=p(4);
x4=p(5);
x5=p(6);
h=(x5-x0)/5;
simpson13=h/3*(f(x0)+4*f(x1)+f(x2));
simpson38=3*h/8*((f(x2)+3*f(x3)+3*f(x4)+f(x5)));
Itotal=simpson13+simpson38

Ecota1=vpa(abs(-1/180*(x2-x0)^5/2^4*f4));
Ecota2=(vpa(-3/80*(f4)*h^5));
Etcota=max(abs(Ecota1),abs(Ecota2))

%inciso c
Vreal=vpa(int(fs,x0,x5));
errorv=vpa(Vreal-Itotal)





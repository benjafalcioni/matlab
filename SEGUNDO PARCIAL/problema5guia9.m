clc
clear all
%problema 5
%inciso a
v=[0.6 1.8 3.2 3.8 6.0 9.0 9.2 11.0];
p=[418.2 367.0 337.8 330.6 321.7 288.0 281.4 201.0];
c=polyfit(v,p,7);
polinomio=@(x) c(1)*x^7+c(2)*x^6+c(3)*x^5+c(4)*x^4+c(5)*x^3+c(6)*x^2+c(7)*x+c(8);
hold on
plot(v,p, 'o')
fplot(polinomio,[0.6,11])
syms x
ps=c(1)*x^7+c(2)*x^6+c(3)*x^5+c(4)*x^4+c(5)*x^3+c(6)*x^2+c(7)*x+c(8);
integ=vpa(int(ps,0.6,11))
%inciso b
trap=vpa(trapecio(v,p))
t=trapz(v,p)
%los valores son iguales
%inciso c 
p=linspace(0.6,11,6);
x0=p(1);
x1=p(2);
x2=p(3);
x3=p(4);
x4=p(5);
x5=p(6);
y0=polinomio(x0);
y1=polinomio(x1);
y2=polinomio(x2);
y3=polinomio(x3);
y4=polinomio(x4);
y5=polinomio(x5);
h=(x5-x0)/5;
Is13=vpa(h/3*(y0+4*y1+y2));
Is38=vpa(3*h/8*((y2+3*y3+3*y4+y5)));
Itotal=vpa(Is13+Is38)

%inciso d
%las unidades de la integral son m^2
%recomendaria usar trapecios, ya que los valores no estan igualmente espaciados,
%además de que en simpson se tomaron valores de una aproximacion del polinomio







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
trap=trapecio(v,p)
t=trapz(v,p)
%los valores son iguales

%inciso c



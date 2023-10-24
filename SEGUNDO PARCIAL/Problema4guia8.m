clc
clear all
%problema 4
T=[200;250;300;350;400];
elong=[7.5;8.6;8.7;10;11.1];
%inciso a
Y=splinelineal(T,elong,375)
Ymatl=interp1(T,elong,375)

%inciso b
p=interpcind(T,elong);
polinomio=@(X) p(1)+p(2)*X+p(3)*X^2+p(4)*X^3+p(5)*X^4;
polaprox=polinomio(375)

%inciso c
hold on
grid on
scatter(T,elong);
fplot(polinomio,[200,400])
plot(375,polaprox,'o')
plot(375,Y,'p')



clc
clear all
%inciso a
syms x
b=estay(x-1-0.5*sin(x),pi/2,6)

rtaA=subs(b,pi/3)

%inciso b
x=pi/4:0.1:pi;
hold on
fplot(matlabFunction(b),[pi/4,pi])
fplot(@(x) (x-1-0.5*sin(x)),[pi/4,pi],'r')
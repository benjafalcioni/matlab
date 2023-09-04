clear all
clc
syms x
g1=-(5*exp(x)+3)^(1/3);
g2=(-3/5)*log(x+3);
g3=-((5*exp(x)+3)/(x^2));
g4=x-0.07*((x)^3+5*exp(x)+3);
conv(-1.5,g1)
conv(-1.5,g2)
conv(-1.5,g3)
conv(-1.5,g4)
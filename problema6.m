clc
clear all
f= @(x) sin(10*x)+cos(3*x);
fplot(f,[4,5])
fp=diff(f);


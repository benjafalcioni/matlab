%problema3 guia 6
syms x
f=3+6*x+5*x^2+3*x^3+4*x^4;
n=100;
tol=10^(-5);
x0=-1;

min=puntoextremo(f,x0,n,tol)

minimo=fminsearch(matlabFunction(f),-1)

fplot(matlabFunction(f),[-10,10])
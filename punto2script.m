% problema 2
syms x
f=-x^4-2*x^3-8*x^2-5*x;
x0=-1;
n=100;
tol=10^(-5);
[x0]=puntoextremo(f,x0,n,tol)
fplot(@(x)-x^4-2*x^3-8*x^2-5*x,-10,10)
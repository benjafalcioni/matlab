syms x
format long 
f=-1.5*x^6-2*x^4+12*x;
x0=2;
df1=diff(f)
n=100;
tol=10^(-8);
[x0]=newton(df1,x0,n,tol)

d2f=subs(diff(df1),x0);
if d2f<0
    disp(['el punto maximo es en:',num2str(x0)])
else
     disp(['el punto minimo es en:',num2str(x0)])
     
end
o=0:10
fplot(@(x) -1.5*x^6-2*x^4+12*x,o)
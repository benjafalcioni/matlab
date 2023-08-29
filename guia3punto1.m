clc
clear all
syms x
f=exp(x);
fprima=[];
fprimaatras=[];
 fprimacentral=[];
 %inciso a
for i=1:8
   fprimaadelante(i)=(subs(f,0+10^(-i))-subs(f,0))/(10^(-i))
end
for i=1:8
   fprimaatras(i)=(subs(f,0)-subs(f,0-10^(-i)))/(10^(-i))
end
for i=1:8
   fprimacentral(i)=(subs(f,0+10^(-i))-subs(f,0-10^(-i)))/(2*(10^(-i)))
   
end

%inciso b
xi = 0
fp = (exp(xi + x) - exp(xi - x))./(2*x)
fp = matlabFunction(fp)
x =0:0.001:0.2

fplot(fp,x)














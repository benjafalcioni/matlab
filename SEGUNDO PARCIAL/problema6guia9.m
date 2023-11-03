%problema 6
%inciso a
syms x
x0=1;
x1=4;
fs=(3*x^5-2*x^3+3*x-5)/(sqrt(x))^3;
integral=vpa(int(fs,x0,x1))
X=[1,4];
Y=[subs(fs,1),subs(fs,4)];
%inciso b
trap1int=vpa(trapecio(X,Y))
%inciso c
X=[1, 5/2,4];
Y=[subs(fs,1),subs(fs,5/2),subs(fs,4)];
trap2int=vpa(trapecio(X,Y))
%inciso d
X=[1,7/4,5/2,13/4,4];
Y=[subs(fs,1),subs(fs,7/4),subs(fs,5/2),subs(fs,13/4),subs(fs,4)];
trap4int=vpa(trapecio(X,Y))
%inciso e aproximacion richardson 
Aprox1=4/3*trap2int-1/3*trap1int
Aprox2=4/3*trap4int-1/3*trap2int
%inciso f
X=[1, 5/2,4];
h=3/2;
Y=[subs(fs,1),subs(fs,5/2),subs(fs,4)];
Is13=vpa(h/3*(Y(1)+4*Y(2)+Y(3)))
%inciso g




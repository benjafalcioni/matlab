%problema 10 
%inciso a
fa=@(x)(2*x+3/x)^2;
syms x
f=(2*x+3/x)^2;
intreal=vpa(int(f,1,2))
%inciso b
h=1;
trap1=vpa(trapecio([1,2],[subs(f,1),subs(f,2)]))
h=0.5;
trap05=vpa(trapecio([1,1.5,2],[subs(f,1),subs(f,1.5),subs(f,2)]))



%inciso c
c0=1;
c1=1;
x0=-1/sqrt(3);
x1=1/sqrt(3);
%funcion transformada
fd=@(xd)(2*((2+1)+(2-1)*xd)/2+3/(((2+1)+(2-1)*xd)/2))^2*(2-1)/2;;

Igauss=c0*fd(x0)+c1*fd(x1)

c0=5/9;
c1=8/9;
c2=5/9;
x0=-sqrt(3/5);
x1=0;
x2=-x0;
Igauss3p=c0*fd(x0)+c1*fd(x1)+c2*fd(x2)








%problema 1 fuia 9
%inciso a
f=@(x) 6+x+7*x^2+x^3-x^4;
a=fzero(f,5);
x0=0;
x1=a/2;
x2=a;
h=(x2-x0)/2;
Isimpson=h/3*(f(x0)+4*f(x1)+f(x2))
%inciso b
syms x
fs=6+x+7*x^2+x^3-x^4;
f4=diff(fs,4);
f4v=int(f4,x0,x2)/(x2-x0);
erroraprox=vpa(-1/2880*(x2-x0)^5*f4v)
%inciso c
Ecota=vpa(-1/180*(x2-x0)*h^4*f4)
%inciso d
%el error de cota es igual al aproximado ya que la funcion es de orden 4 y su
%derivada 4ta es un numero cte
Vreal=vpa(int(fs,x0,x2));
Ev=vpa((Vreal-Isimpson))

%inciso e
syms b
X=[0;a/2;a];
Y=[f(x0);f(x1);f(x2)];
c=polyfit(X,Y,2);
polinomio=c(1)*b^2+c(2)*b+c(3);
integral=vpa(int(polinomio,x0,x2))
pan=matlabFunction(polinomio);
hold on
plot(X,Y,'o')
fplot(pan,[x0,x2])

%las integrales dan iguales


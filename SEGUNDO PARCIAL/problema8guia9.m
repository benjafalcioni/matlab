%problema 8
x=[10 17 24 29 34 41 48 52 56 60];
y=[-104 -265.61 -400.46 -400.61 -240.7 420.55 1856.5 3155.54 4892.34 7146];

%inciso a
h1=(x(3)-x(1))/2;
h2=(x(3)-x(5))/2;
h3=(x(5)-x(7))/2;
h4=(x(10)-x(7))/3;
I131=vpa(h1/3*(y(1)+4*y(2)+y(3)));
I132=vpa(h2/3*(y(3)+4*y(4)+y(5)));
I133=vpa(h3/3*(y(5)+4*y(6)+y(7)));
I38=vpa(3*h4/8*((y(7)+3*y(8)+3*y(9)+y(10))));
Intaprox=I131+I132+I133+I38
%inciso b
fa=@(X)0.001*X^4-0.01*X^3-X^2-X+6;
syms X
f=0.001*X^4-0.01*X^3-X^2-X+6;
integReal=vpa(int(f,x(1),x(10)))
%inciso c
Ereal=abs(integReal-Intaprox)
hold on
plot(x,y,'o')
fplot(fa,[x(1),x(10)])




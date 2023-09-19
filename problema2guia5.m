format long
x0=[0;3.5];

F=@(x0) [(x0(1)-1)^2+(x0(2)-1)^2-1;x0(1)-x0(2)];

J=@(x0) [2*(x0(1)-1),2*(x0(2)-1);1,-1];
it=0;
error=inf;
n=5;
tol=10^(-8);

while tol<=error && n>=it
     it=it+1
     
     p=linsolve(J(x0),-F(x0));
     xn=p+x0;
     x0=xn
     
     error=norm(F(x0),2);
     
end
%inciso c
%da infinito, los puntos que no pueden ser los iniciales en NR son en los
%cuales la funcion diverge.
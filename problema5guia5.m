format long
x0=[2.5;0.2;1.6];

F=@(x0) [x0(1)^2+x0(2)^2+x0(3)^2-9;x0(1)*x0(2)*x0(3)-1;x0(1)+x0(2)-x0(3)^2];

J=@(x0) [2*x0(1),2*x0(2),2*x0(3);x0(2)*x0(3),x0(3)*x0(1),x0(1)*x0(2);1,1,-2*x0(3)];
it=0;
error=inf;
n=1000;
tol=10^(-8);

while tol<=error && n>=it
     it=it+1;
     
     p=linsolve(J(x0),-F(x0));
     xn=p+x0;
     error=norm(xn-x0,2)/(norm(xn)+10^(-10));
     x0=xn;
end
xn
it

fsolve(F,x0)

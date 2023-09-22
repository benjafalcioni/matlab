
c1=50;
c2=20;
c3=5;
c4=10;
k1=4.0e-4;
k2=3.7e-2;
F= @(x) [k1-((c3+x(1)+x(2))/(((c1-2*x(1)-x(2))^2)*(c2-x(1))));k2-((c3+x(1)+x(2)))/(((c1-2*x(1)-x(2))*(c4-x(2))))]

tol=10^(-8);
it=8;
X0=[1;1];

sol1=newdiscr(F,X0,tol,it);
sol2=fsolve(F,X0);
errorreal=abs(sol2-sol1)
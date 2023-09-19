format long
x0=[1;5];

F=@(x0) [(1.38*x0(1)+2.58*x0(2)-0.1);(4.03*x0(1)-5.12*x0(2)-2.3)];

J=@(x0) [1.38,2.58;4.03,-5.12];
it=0;
error=inf;
n=1000;
tol=10^(-7);

while tol<=error && n>=it
     it=it+1;
     
     p=linsolve(J(x0),-F(x0));
     xn=p+x0;
     error=norm(xn-x0,2)/(norm(xn)+10^(-10));
     x0=xn;
       
end
disp(['converge en:',num2str(it)])
x0
%inicso b, es lineal, la matriz del jacobiano equivale a la matriz de
%coeficientes
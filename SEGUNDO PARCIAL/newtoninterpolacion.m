function [P] = newtoninterpolacion(x,y)
syms X
n=length(x);
P=zeros(1,n);
f=zeros(n,n)
f(:,1)=y;

for j=2:n
    for i=1:n-j+1
        f(i,j)=(f(i+1,j-1)-f(i,j-1))/(x(i+j-1)-x(i));
    end
end
    for j=1:n
    P(j)=f(1,j);
    end
 interpolacion=P(1)
 for j=2:n
  interpolacion=interpolacion+P(j)*prod(X-x(1:j-1));
 end
 P=interpolacion;
    
       
fplot(matlabFunction(P),[-10,10]) 
end

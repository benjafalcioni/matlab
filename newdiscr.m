function [ XR,p ] = newdiscr(F,X0,tol,it)
iteraciones=0;
error=inf;
disp('iteraciones  errorx')
   while iteraciones<=it && error>=tol
       
       iteraciones=iteraciones+1;
       B=jacodiscr(F,X0);
       p=linsolve(B,-F(X0));
       XR=p+X0;
       error=norm(p,2)/((norm(X0,2)+10^(-10)));
       X0=XR;
       fprintf('%10i %15.10f\n',iteraciones,error);
   end
XR
p
   
end


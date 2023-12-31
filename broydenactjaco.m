function [ XR ] = broydenactjaco( F,X0,tol,it )


[XR,p] =newdiscr(F,X0,1000,1);
iteraciones=1;
error=inf;
 Bv=jacodiscr(F,X0);
while error>=tol && iteraciones<=it 
    
   iteraciones=1+iteraciones;
   Fv=F(X0);
   Fn=F(XR);
   Y=Fn-Fv;    
   Bn= Bv+(Y-Bv*p)*((transpose(p)/(transpose(p)*p)));
   p=linsolve(Bn,-F(XR));
   
   X0=XR;
   XR=p+XR;
   error=norm(p,2)/((norm(X0,2)+10^(-10)));
   Bv=Bn;
  

end
XR

end

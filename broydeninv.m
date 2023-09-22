function [ XR ] = broydeninv( F,X0,tol,it )

[XR,p] =newdiscr(F,X0,1000,1);
iteraciones=1;
error=inf;
Bv=jacodiscr(F,X0);
while error>=tol && iteraciones<=it 
    
   iteraciones=1+iteraciones;
   Fv=F(X0);
   Fn=F(XR);
   Y=Fn-Fv;  
   H0=inv(Bv);
   H=H0-((H0*Y-p)*(transpose(p)*H0))/(transpose(p)*H0*Y);
   p=-H*Fn;
   X0=XR;
   XR=p+XR;
   error=norm(p,2)/((norm(X0,2)+10^(-10)));
   H0=H;
   
end
XR
iteraciones
end


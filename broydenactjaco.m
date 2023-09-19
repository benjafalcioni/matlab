function [ XR ] = broydenactjaco( F,X0,tol,it )

Fv=F(X0);
Xr=newdiscr(F,X0,1000,1);
Fn=F(Xr);
Y=Fn-Fv;

while error>=tol && iteraciones<=it 
    
Bv=jacodiscr(F,X0);    
Bn= Bv+(Y-Bv*p)*((transpose(p)/(transpose(p)*p)));




end


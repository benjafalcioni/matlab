function [ xr] = secante(f,x0,x1,n,tol)
error=inf;
it=0;
 
while it<=n && error>tol
    it=it+1;
% Calculos iteracion actual
x2=x1-f(x1)*((x1-x0)/(f(x1)-f(x0)));
% Preparatvos proxima iteracion
x0=x1;
x1=x2;

error=100*(abs(x0-x1)/(abs(x1)+1*exp(-10)));
end
xr=x2

end


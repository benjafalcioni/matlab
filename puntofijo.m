function [output] = puntofijo(f,x0,n,tol)
error=inf;
it=0;
xv=x0;
while error>tol && it<=n
  it=it+1;
  xn=f(xv);
  error=100*(abs(xn-xv)/(abs(xv)+(1*exp(-10))));
  xv=xn;

end
    it=it
    output=xv
    error=error
end


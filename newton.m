function [output] = newton(f,x0,n,tol)
syms x
fp=diff(f,1);
error=inf;
it=0;

while error>tol && it<n
    xv=x0;
    x0=xv-((subs(f,x0))/subs(fp,x0));
    it=it+1;
    error=abs(x0-xv)/(abs(xv)+1*exp(-10));
end
disp(['las iteraciones son:',num2str(it)])
disp(['el error es:',num2str(error)])
disp(['la raiz es:',num2str(x0)])
end


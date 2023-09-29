function [ x0 ] = puntoextremo( f,x0,n,tol )
syms x
df=diff(f);
[x0]=newton(df,x0,n,tol);
df2=subs(diff(df),x0);
if df2<0
    disp(['el punto maximo es en:',num2str(x0)])
else
     disp(['el punto minimo es en:',num2str(x0)])
     
end

end


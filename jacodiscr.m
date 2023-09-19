function [ B ] = jacodiscr(F,X0)
n=length(X0);
B=zeros(n,n);
Fp =F(X0);

for i=1:n
    for j=1:n
        delta(1:n,1)=0;
        delta(j)=max(10^(-5),0.001*abs(X0(j)));
        Fa=F(X0+delta);
         B(i,j)=(Fa(i)-Fp(i))/delta(j);
    end
end

      
end


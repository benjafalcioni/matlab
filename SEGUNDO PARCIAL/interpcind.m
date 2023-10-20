function [coef] = interpcind(a,b)
n=length(b);
A=zeros(n,n-1);
for i=1:n
    for j=1:n-1
        A(i,j)=a(i)^j;
    end
end
A=[ones(n,1) A];

C=linsolve(A,b)
end


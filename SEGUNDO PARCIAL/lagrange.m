function [P] = lagrange(a,f)
syms x
n=length(a);
P=0;
for i=1:n
    t=f(i);
    for j=1:n
        if j~=i
        t=t*(x-a(j))/(a(i)-a(j));
     
        end
    end
     
     P=P+t;
end
P
end


function output = estay( f,a,n )
syms x;
p=sym(0);
for i=0:1:n
    p=p+subs(diff(f,i),a)*((x-a)^i)/factorial(i);
end

output=p;

end
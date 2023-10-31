function [ output ] = trapecio( x,y )
output=0;
n=length(x)-1;
for i=1:n
output=output+(x(i+1)-x(i))*(y(i)+y(i+1))/2

end
end


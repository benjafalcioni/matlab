function Y = splinelineal( x,y,X )
n=length(x);
for i=2:n
      if (X>x(i-1)) && (X<x(i))
            Y=(y(i)-y(i-1))*(X-x(i-1))/(x(i)-x(i-1))+y(i-1)
      end
end

end


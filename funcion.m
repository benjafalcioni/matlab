function [ f ] = funcion(x)

f1=@(x) (x(1)-1)^2+(x(2)-1)^2-1;
f2=@(x) x(1)-x(2);
f={f1;f2}

end

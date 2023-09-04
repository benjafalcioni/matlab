function [output] = conv(x0,g)
syms x
g=diff(g);
if abs(subs(g,x0))<1
    disp('la funcion converge')
else
    disp('la funcion no converge')
end
end


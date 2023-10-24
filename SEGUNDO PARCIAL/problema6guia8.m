%problema 6
x=[0.1;1;2;4;5;7];
f=[0.1;3.6;4.8;6;6.3;6.8];
polnewton=newtoninterpolacion(x,f)
pollagrange=lagrange(x,f)
c=interpcind(x,f);
polci=@(X) c(1)+c(2)*X+c(3)*X^2+c(4)*X^3+c(5)*X^4+c(6)*X^5
hold on
fplot(matlabFunction(polnewton),[0,7],'o')
fplot(matlabFunction(pollagrange),[0,7],'--r')
fplot(polci,[0,7],'p')
%los coeficientes son ligeramente distintos divido a que se obtienen de distintas
%maneras y pueden haber errores de redondeo o truncado.

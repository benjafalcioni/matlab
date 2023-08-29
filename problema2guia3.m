%Problema 2 guia 3
%inciso a
%1
fp=(exp(1.1)-exp(1))/0.1;
%2
fc=(exp(1.1)-exp(0.9))/(2*0.1);

Et1=abs(exp(1)-fp);
Et2=abs(exp(1)-fc);
disp(['el error de la diferenciacion hacia delante es:', num2str(Et1)])
disp(['el error de la diferenciacion hacia atras es:', num2str(Et2)])
%inciso b
fa2=(-exp(1+0.2)+4*(exp(1+0.1))-3*exp(1))/(2*0.1);
ErelA2=abs((exp(1)-fa2)/exp(1));
disp(['el error relativo de la diferenciacion de orden dos hacia delante es:',num2str(ErelA2)])
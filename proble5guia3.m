%Problema 5
%inciso a
k=-40/((10-15)/0.1)

%inciso b
%dif central grado 4
fc4=(-1+8*3-8*10+15)/(12*0.1);
        Q=-k*fc4
        
%inciso c
Errorrel=((30-Q)/30)*100
%el origen del error es el callculo de k, ya que es aproximado de orden 1
%(o(h))
%Problema 3
p=[418.2;367;337.8;330.6;321.7;288;281.4;201.0];
v=[0.6;1.8;3.2;3.8;6;9;9.2;11];
polinomio=polyfit(p,v,7)
val=polyval(polinomio,p)

Y=splinelineal( p,v,250 )
Ysplinecubico=interp1(p,v,250,'cubic')
hold on
grid on
scatter(p,v)
plot(p,val)

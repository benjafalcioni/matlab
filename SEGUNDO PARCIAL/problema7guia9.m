%problema 7
x=[1 2 2.8 3.5 4 5];
y=[0.5 2 1 2 3 1];
%inciso a
trap1int=trapecio([1,5],[0.5,1])
%inciso b
trap5int=trapecio(x,y)

Vreal=7.0477;
Errelativo1=(Vreal-trap1int)/Vreal
Erelativo2=(Vreal-trap5int)/Vreal

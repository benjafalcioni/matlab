%probelma 4
%inciso a
Fc2=(3.375-0.625)/(2*0.5)

%inciso b
Fcd2=(4-(2*3.375)+2)/(0.5^2)

%inciso c
syms t
f=((-t)^3)+3*(t)^2
vel=subs(diff(f,1),1)
acel=subs(diff(f,2),1.5)

Ev=abs((vel-Fc2)/vel)
Ea=abs((acel-Fcd2)/acel)

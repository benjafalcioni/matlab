function [ x,y,z ] = shooting_RK4( a,b,h,yi,yf,F1,F2,z1,z2)
x=a:h:b;
%1er disparo
[y1 zf1]=RK2(F1,F2,x,yi,z1);
e1=abs(y1(end)-yf);

%2do disparo
[y2 zf2]=RK2(F1,F2,x,yi,z2);
e2=abs(y2(end)-yf);
y2=y2(end);
y1=y1(end);

%3er disparo
z3=(yf-y1)*((z2-z1)/(y2-y1))+z1;
[y3 zf3]=RK2(F1,F2,x,yi,z3);
e3=abs(y3(end)-yf);  

e3
x=x(end)
y=y3(end)
z=zf3(end)
end


%problema 4
df=@(x,y)10*exp(-(x-2)^2/2*(0.075)^2)-0.6*y;
y0=0.5;
x1=0:1:4;
x2=0:0.25:4;
x3=0:0.001:4;
%inciso a
difRK1=rungekutta4(x1,y0,df);
difRK2=rungekutta4(x2,y0,df);
difRK3=rungekutta4(x3,y0,df);
dif1=difRK1(end)
dif2=difRK2(end)
dif3=difRK3(end)
%inciso b
[vx,vy]=ode45(df,[0,4],y0);
ode45dif=y(end)
hold on
plot(vx,vy,'r')
plot(x1,difRK1,'o')
plot(x2,difRK2,'p')
plot(x3,difRK3,'g')
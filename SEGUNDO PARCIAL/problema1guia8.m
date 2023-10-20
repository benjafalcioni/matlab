x=[1 2 2.5 3.8 5.6 7.1 8.4 9.2 10.5 12.6 15.2];
y=[0;0.6900;0.9100;1.3300;1.7200;1.9600;2.1200;2.2100;2.3500;2.5500;2.7200];
plagrange=lagrange(x,y)
pnewton=lagrange(x,y)
hold on
fplot(matlabFunction(plagrange),[1,15.2],'p')
fplot(matlabFunction(pnewton),[1,15.2],'y')

plagrangee=matlabFunction(plagrange);
pnewtonn=matlabFunction(pnewton);
estimacionlagrange1=plagrangee(4.5)
estimacionnewton1=pnewtonn(4.5)
estimacionlagrange2=plagrangee(14.5)
estimacionnewton2=pnewtonn(14.5)



%problema 1
F1=@(x,y,z)z;
F2=@(x,y,z) 2*z-y-3;
xi=0;
xf=2;
yi=-3;
yf=1;
z1=2;
z2=-2;
h=0.5;
shooting_RK4(xi,xf,h,yi,yf,F1,F2,z1,z2);
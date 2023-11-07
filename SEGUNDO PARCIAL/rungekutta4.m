function [ y ] = rungekutta4( x,y0,df )
n=length(x);
h=(x(n)-x(1))/(n-1);
y=zeros(1,n);
y(1)=y0;
for i=1:n-1
      k1=df(x(i),y(i));
      k2=df(x(i)+h/2,y(i)+k1*h/2);
      k3=df(x(i)+h/2,y(i)+k2*h/2);
      k4=df(x(i)+h,y(i)+k3*h);
      y(i+1)=y(i)+h/6*(k1+2*k2+2*k3+k4);
end
y;
end



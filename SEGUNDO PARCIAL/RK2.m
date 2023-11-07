function [ y1 y2 ] = RK2( df1,df2,x,Y1,Y2 )
n=length(x);
h=(x(n)-x(1))/(n-1);
y1=zeros(1,n);
y1(1)=Y1;
y2=zeros(1,n);
y2(1)=Y2;
for i=1:n-1
      k11=df1(x(i),y1(i),y2(i));
      k12=df2(x(i),y1(i),y2(i));
      k21=df1(x(i)+h/2,y1(i)+k11*h/2,y2(i)+k12*h/2);
      k22=df2(x(i)+h/2,y1(i)+k21*h/2,y2(i)+k12*h/2);
      k31=df1(x(i)+h/2,y1(i)+k21*h/2,y2(i)+k22*h/2);
      k32=df2(x(i)+h/2,y1(i)+k31*h/2,y2(i)+k22*h/2);
      k41=df1(x(i)+h,y1(i)+k31*h,y2(i)+k32*h);
      k42=df2(x(i)+h,y1(i)+k41*h,y2(i)+k32*h);
      y1(i+1)=y1(i)+h/6*(k11+2*k21+2*k31+k41);
      y2(i+1)=y2(i)+h/6*(k12+2*k22+2*k32+k42);
end
y1
y2
end




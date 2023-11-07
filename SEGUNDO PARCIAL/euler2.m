function [ y1 y2 ] = euler2( df1,df2,x,Y1,Y2 )
n=length(x);
h=(x(n)-x(1))/(n-1);
y1=zeros(1,n);
y1(1)=Y1;
y2=zeros(1,n);
y2(1)=Y2;
for i=1:n-1
      y1(i+1)=y1(i)+h*df1(x(i),y1(i),y2(i));
      y2(i+1)=y2(i)+h*df2(x(i),y1(i),y2(i));
      
end

end




function [ y ] = euler(x,y0,df)
n=length(x);
h=(x(n)-x(1))/(n-1);
y=zeros(1,n);
y(1)=y0;
for i=1:n-1
      y(i+1)=y(i)+h*df(x(i),y(i));
end

end


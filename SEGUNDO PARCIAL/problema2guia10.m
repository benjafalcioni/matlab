clc
clear all
%problema 2
X=[0,0.5,1,1.5];
y0=1;
df=@(x,y)-2*x^3+12*x^2-20*x+8.5;
f=@(x,y) -x^4/2+4*x^3-10*x^2+17*x/2+1;
dif1=euler(X,y0,df)
dif2=heun(X,y0,df)
dif3=puntomedio(X,y0,df)
dif4=rungekutta4(X,y0,df)
solanalitica=[f(X(1)) f(X(2)) f(X(3)) f(X(4))]

%error
n=length(X)
error1=0;
error2=0;
error3=0;
error4=0;
for i=1:n
      error1(i)=abs(solanalitica(i)-dif1(i));
      error2(i)=abs(solanalitica(i)-dif2(i));
      error3(i)=abs(solanalitica(i)-dif3(i));
      error4(i)=abs(solanalitica(i)-dif4(i));
end
error1
error2
error3
error4




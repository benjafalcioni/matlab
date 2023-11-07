%problema 8
r=0.1;
a=0.01;
b=0.001;
m=0.05;
P1=50;
C1=15;
df1=@(t,P,C) r*P-a*P*C
df2=@(t,P,C) b*P*C-m*C
%inciso a
t=0:1:200;
[p1 c1]=euler2(df1,df2,t,P1,C1);
pfinal=p1(end)
cfinal=c1(end)
t2=0:0.01:200
[p2 c2]=euler2(df1,df2,t2,P1,C1);
pfinal2=p2(end)
cfinal2=c2(end)
%icniso b
hold on
plot(t,p1)
plot(t,c1,'r')
plot(p1,c1,'g')
figure()
hold on
plot(t2,p2)
plot(t2,c2,'r')
plot(p2,c2,'g')

%inciso c

f=@(t,S) [r*S(1)-a*S(1)*S(2);b*S(1)*S(2)-m*S(2)]
[odep1,odec1]=ode45(f,[0,200],[P1,C1])
c=odec1(:,2);
p=odec1(:,1);
cfinal=c(end)
pfinal=p(end)


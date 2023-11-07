%problema3
X=[0,0.5,1,1.5];
y0=1;
df=@(x,y)-2*x^3+12*x^2-20*x+8.5;
[x,y]=ode45(df,[0,1.5],y0)
%si son mejores ya que son valores exactos, son parecidos a los de runge kutta
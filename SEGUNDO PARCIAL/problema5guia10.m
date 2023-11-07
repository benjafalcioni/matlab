%problema5
Y1=4;
Y2=6;
X=0:0.5:5;
df1=@(x,y1,y2) -0.5*y1;
df2=@(x,y1,y2) 4-3*y2-0.1*y1;
%RK
[y1 y2]=RK2(df1,df2,X,Y1,Y2);
yn1=y1(end)
yn2=y2(end)
%euler
[y1 y2]=euler2(df1,df2,X,Y1,Y2);
ye1=y1(end)
ye2=y2(end)



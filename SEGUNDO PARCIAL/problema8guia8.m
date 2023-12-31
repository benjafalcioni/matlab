%Problema 7
A=[4 2 1 0 0 0 0 0 0 0 0 0;...
   0 0 0 4 2 1 0 0 0 0 0 0;...
   0 0 0 6.25 2.5 1 0 0 0 0 0 0;...
   0 0 0 0 0 0 6.25 2.5 1 0 0 0;...
   0 0 0 0 0 0 10.24 3.2 1 0 0 0;...
   0 0 0 0 0 0 0 0 0 10.24 3.2 1;...
   2.56 1.6 1 0 0 0 0 0 0 0 0 0;...
   0 0 0 0 0 0 0 0 0 16 4 1;...
   4 1 0 4 1 0 0 0 0 0 0 0;...
   0 0 0 5 1 0 5 1 0 0 0 0;...
   0 0 0 0 0 0 6.4 1 0 6.4 1 0;...
   2 0 0 0 0 0 0 0 0 0 0 0];
b=[8;8;14;14;15;15;2;8;0;0;0;0];

c= linsolve(A,b)
x=[1.6;2;2.5;3.2;4];
f=[2;8;14;15;8];
spline1=@(X)c(1).*X.^2+c(2).*X+c(3);
spline2=@(X)c(4).*X.^2+c(5).*X+c(6);
spline3=@(X)c(7).*X.^2+c(8).*X+c(9);
spline4=@(X)c(10).*X.^2+c(11).*X+c(12);
valor=spline4(3.4)
valor2=spline2(2.2)
hold on
plot(x,f,'o')
fplot(spline1,[1.6,2])
fplot(spline2,[2,2.5])
fplot(spline3,[2.5,3.2])
fplot(spline4,[3.2,4])
xlim([1.6,4])


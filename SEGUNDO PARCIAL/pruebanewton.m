clear
close
n=3;
A=zeros(n,n+1);
A(:,1)=[1;4;6];
A(:,2)=[0;1.386;1.792]
q=n-1;
s=1;
%i=filas
%j=columnas
for j=3:n+1
      
      for i=1:q
            
      A(i,j)=(A(i+1,j-1)-A(i,j-1))/(A(i+s,1)-A(i,1))
      end
      
      q=q-1;
      s=s+1
       
end

syms X
interpolacion=A(1,2);
for j=3:n+1
      P(1,j)=A(1,j);
      prod=1
      for k=1:j-2
            prod=prod*(X-A(k,1));
    
      end
      interpolacion=interpolacion+P(1,j)*prod;
      end
     

Polinomio=interpolacion
fplot(matlabFunction(Polinomio),[1,6])

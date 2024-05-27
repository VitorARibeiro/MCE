function [It,Resultado] = RegraDosTrapeziosErro(a,b,Tol)
%REGRADOSTRAPEZIOSERRO Summary of this function goes here
%   Detailed explanation goes here



%a + b

n = 0;
Erro  = Tol + 1;

while Erro > Tol
    n = n +1 ; 
    h = (b-a) / n ;



    xCompleto = a:h:b;



    M = max( abs(FuncDD(xCompleto)));
    Erro = (h^2 / 12) * (b-a) * M; 


end

x = a+h:h:b-h;
Area = (h/2) * ( Func(a) + 2*sum(Func(x)) + Func(b) );
It = n;
Resultado = Area + Erro;
end


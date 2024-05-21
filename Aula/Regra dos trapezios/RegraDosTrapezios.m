function [Resultado,Erro] = RegraDosTrapezios(a,b,n)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
h = (b-a) / n ;

x = a+h:h:b-h;

xCompleto = a:h:b;

Area = (h/2) * ( Func(a) + 2*sum(Func(x)) + Func(b) )

M = max( abs(FuncDD(xCompleto)));
Erro = (h^2 / 12) * (b-a) * M; 
Resultado = Area + Erro;
end


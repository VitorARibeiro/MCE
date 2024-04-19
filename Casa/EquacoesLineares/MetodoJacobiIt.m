function [xD,erro] = MetodoJacobiIt(A,B,n)
%METODO JACOBI Summary of this function goes here
%   Detailed explanation goes here

if (abs(det(A)) <= 0.0001) 
    fprintf("Determinante proximo de 0 \n")
        return ;
end

L = -tril(A,-1);
U = -triu(A,1);
D = diag(diag(A));

M = D\(L+U) ; N = D\B;

ro = max(abs(eig(M)));

if(ro >= 1)
    fprintf("RO >= 1 \n");
    return;
end

xA = zeros(size(A,1),1); %Ponto inicial a zero
xA(1,1) = 1;
xA(2,1) = 0;

it = 0;

while(it < n)
xD = M*xA + N
erro = norm(xD - xA)/norm(xD); %norma 2 ,p 1 2 inf

it = it +1;
fprintf("It - %i erro = %f \n",it,erro);
xA = xD;
end

end


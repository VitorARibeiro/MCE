function [xD,it] = MetodoGaussSeidelErro(A,B,tol)
%METODO JACOBI Summary of this function goes here
%   Detailed explanation goes here

if (abs(det(A)) <= 0.0001) 
    fprintf("Determinante proximo de 0 \n")
        return ;
end

L = -tril(A,-1);
U = -triu(A,1);
D = diag(diag(A));

M = (D-L)\U ; N = (D-L)\B;

ro = max(abs(eig(M)));

if(ro >= 1)
    fprintf("RO > 1 \n");
    return;
end

xA = zeros(size(A,1),1);
erro = tol +1;
it = 1;

while(erro >= tol)
xD = M*xA + N;
erro = norm(xD - xA); %norma 2 ,p 1 2 inf 

fprintf("It - %i erro = %f \n",it,erro);
it = it +1;
xA = xD;
end

end


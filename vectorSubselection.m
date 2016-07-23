% Devuelve subseleccion de M con las
% columnas definidas en C
function N = vectorSubselection(M, C)    

if (nargin ~= 2)
   error('Numero de argumentos incorrecto');
end


j = 1;
sC = size(C);

% Genera el equivalente a N=T*M' donde T
% es la matriz de selección de características  
% n de m donde todos el elemento seleccionado 
% tiene valor 1 y el resto 0's

for i=1:sC(2)   
    %C(:)
    %C(1)
    %C(2)
   
    N(:, i) = M(:, C(i));
    %N = [M(:, 1) M(: , 2)]
end


% M = [2 3 4];
% T = [[0 0 0];[0 1 0];[1 0 0]];
% A = T*M';
% A
% 
% N = TM;

end

function [Ac, Dc] = metodoBeta(A, D)
% Elimina una arista por el método alfa
% La de mayor peso
% A contiene la lista de arista
% D contiene los pesos
% Ac - Devuelve las nuevas aristas
% Pr - Pormedio de las ramas adyacentes a la arista
Ac = [];
Dc = [];
Pr = [];

% Mínimo que tiene que superar una determinada rama
% al promedio de sus adyacentes
factorPromedio = 1.20;


qa = size(A);

A;

%Calculamos los promedios de cada arista
numA = 0;
numB = 0;
totA = 0;
totB = 0;
for i=1:qa(1)
       a = A(i, 1);
       b = A(i, 2);
       
    % Para cada par de elementos de la arista
    % se calculan los promedios de las adyacentes
    % a los dos vértices de la rama.
  
    % Se tienen en cuenta los dos elementos a y b 
    % de la arista
    for j=1:qa(1)
        
        ap = A(j, 1);
        bp = A(j, 2);
        
        if(a == ap || a == bp)
            numA = numA + D(j);
            totA = totA + 1;
        end
        
        if(b == ap || b == bp)
            numB = numB + D(j);
            totB = totB + 1;
        end
        
    end 
    
    promedio = ((numA/totA)+(numB/totB))/2;
    
    Pr(i) = promedio;
       
end



Pr;


% Ordenamos las distancias de menos a mayor.
% Empezando por la mayor vamos verificando 
% si cumple el requisito del factor de promedio
% si lo hace detectamos arista a eliminar.
% Si no pasamos al siguiente
% F contiene los indices del vector original ordenado
% S contiene los valores en orden
[S, F] = sort(D);

found = 0;
c = size(D);
count = c(2)
ind = 0;
while (found == 0 && count > 0)
    indexActual = F(count);
    promedio = Pr(indexActual);
    distancia = D(indexActual);
    
    if (distancia > promedio*factorPromedio)
        found = 1;
        ind = indexActual;
    end
    count = count - 1
end


ind


S;
F;


% 
% for i=1:qa(1)
%         
% end


% ind contiene el indice de la arista a eliminar de A






% Ajustamos los vectores eliminando la arista seleccionada en 'ind'
%Aaux = [A(3, :)]



% Hardcoded
%ind = 95;



cnt = 1;
for i=1:qa(1)
    if(i == ind)
    else
        Ac(cnt, :) = A(i, :);
        cnt = cnt + 1;
    end
end


cnt = 1;
for i=1:qa(1)
    if(i == ind)
    else
        Dc(cnt) = D(i);
        cnt = cnt + 1;
    end
end


Ac;
Dc;

end

function g = dispersion(M)
% La dispersión será el promedio de las L-esimas
% distancias del conjunto de muestras etiquetadas

% Parámetro l la l-esima muestra sobre la que se
% calcula la distancia. Valor asignado 3
l = 3;

sM = size(M);

tot = 0;    % Total de elementos computables
dist = 0;   % Distancia parcial acumulada
for i=1:sM(1)
    
    dist = dist + distanciaLesima(M(i,:), M, l);
    
    % La dispersión podría evaluarse solo para 
    % las clases de cada función discriminante
    % y no sería tot = sM(1)
    tot = tot +1;
end

g = dist/tot;

end

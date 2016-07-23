function g = dispersion(M)
% La dispersi�n ser� el promedio de las L-esimas
% distancias del conjunto de muestras etiquetadas

% Par�metro l la l-esima muestra sobre la que se
% calcula la distancia. Valor asignado 3
l = 3;

sM = size(M);

tot = 0;    % Total de elementos computables
dist = 0;   % Distancia parcial acumulada
for i=1:sM(1)
    
    dist = dist + distanciaLesima(M(i,:), M, l);
    
    % La dispersi�n podr�a evaluarse solo para 
    % las clases de cada funci�n discriminante
    % y no ser�a tot = sM(1)
    tot = tot +1;
end

g = dist/tot;

end

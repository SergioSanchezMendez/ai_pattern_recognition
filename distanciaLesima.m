function d = distanciaLesima(y, M, l)
% Distancia L-esima 
% distancias del conjunto de muestras etiquetadas
% 
sM = size(M);
 
D = [];       % Distancias de todas las muestras



for i=1:sM(1)
      d = dist(y(1,:), M(i,:));
      D(i) = d;  
end

% Distancias a todos los elementos de M incluido el
% propio y para evitar sM(1) condicionales, se tiene
% en cuenta que al calcular la distancia(y, y) = 0
% y por tanto cogeremos el (l+1)-esimo menor elemento
D;

Dord = sort(D);

d = D(l+1);

end

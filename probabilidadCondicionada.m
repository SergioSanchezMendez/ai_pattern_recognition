function pci = probabilidadCondicionada(X, i, M, L, n, g)
% Devuelve el valor de la suma de las funciones potenciales
% de las muestras de M que intervienen en la clase i
% L contiene las clases de cada muestra


sM = size(M);

% g - En lugar de calcular aqui la dispersión lo hacemos en
% estadios superiores de cálculo para evitar repeticiones
% Para dispersiones variables se calcularía en este punto

% Para todas las muestras etiquetadas
pciAcum = 0;    % Probabilidad aparcial acumulada
tot = 0;        % Numero de funciones potenciales
for j=1:sM(1)

   % Si son de la clase de la funcion discriminante actual
   % se incluyen en el cómputo de la probabilidad.
   if(L(j)==i)
        % La funcion potencial es ecogida entre las disponibles 
        pciAcum = pciAcum + funcionPotencial(X, M(i, :), n, g);
        tot = tot + 1;
   end
   
end

pci = pciAcum/tot;

end

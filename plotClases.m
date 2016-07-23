% Representa en 2D las diferentes clases
% X grupo de puntos
% L clases correspondientes.

function plotClases(X, L)    

if (nargin ~= 2)
   error('Numero de argumentos incorrecto');
end

Rep    = [];  %Representacion del elemento 
Shape = ['o', '+', '*', 'x', 's'];
Color = ['r', 'g', 'b', 'y', 'm'];

T = Shape;




% Buscamos número de clases
C = [];
sX = size(X);

sX(1);
for i=1:sX(1)   
    
    L(i);
    ind = find(C==L(i));

    if (ind > 0)
    else
        sC = size(C);
        C(sC(2)+1) = L(i);
    end    
end

C

% Asignamos Shape & Color
sX = size(C);

for i=1:sX(2)   
    Rep(i) = i; % Abstrae de las etiquetas
end

Rep

% Recorremos la matriz y mostramos resultados
hold;
sZ = size(X);
for i=1:sZ(1)   

    L(i);
    ind = find(C==L(i));
    
    Col = Color(Rep(ind))
    Shp = Shape(Rep(ind))  
       
    plot(X(i, 1), X(i, 2), Shp,'MarkerSize',6, 'MarkerEdgeColor',Col)    
end


hold on

end

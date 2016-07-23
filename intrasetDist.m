% Calcula la distancia intraset de las 
% clases de las muestras etiquetadas 
% desde L

% Intervienen 3 vectores C, mporClase y V
% C - Almacena los valores de la 
% clase conforme van apareciendo
% mporClase - Almacena el numero de elementos
% de cada clas. El indice coincide con el de C
% V - Almacena los valores de intraset acumulados
% de cada clase.

function R = intrasetDist(X, L)    

if (nargin ~= 2)
   error('Numero de argumentos incorrecto');
end


% Obtenemos el numero de clases y los elementos por clase
% C clases
% mporClase

C = [];
mporClase = [];

sX = size(X);


% Iteramos sobre las filas
sX(1);
for i=1:sX(1)   
    
    L(i);
    ind = find(C==L(i));

    
    % Clase registrada
    if (ind > 0)
        
        % La posicion C(ind) contiene la clase
        % La posicion mporClase(ind) contine el numero de repeticiones
        mporClase(ind) = mporClase(ind)+ 1;
                
    else
        sC = size(C);
        %sC(2); numero actual de clases en C 
        C(sC(2)+1) = L(i);
        mporClase(sC(2)+1) = 1;
        
    end
    
end

% Tenemos:
% C <- Identificadores de las clases
% mporClase <- Numero de elementos


% Obtenemos el vector de distancias intrasets R's interando
% sobre cada clase
% V, Valor acumulado de las distancias interset de cada 
% clase, V(ind) -> valor intraset acumulado de C(ind)
sZ = size(C);
V = [1: sZ(2)];


sX(1);
% Suma valores distancias
for j=1:sX(1)   
       
    L(j);
    
    for k=j+1 :sX(1)   
        
        L(k);
        
        %Elemento computable (Misma clase)
        if(L(j) == L(k))        
            ind = find(C==L(k));
            V(ind) = V(ind) + dist(X(j), X(k));
        end
          
    end 
                   
end


% Cálculos de valores medios 1/M(M-1) para cada valor
% de V
sZ(2);
for l=1:sZ(2)   
    m = mporClase(l);
    V(l) = V(l)* 2/(m*(m-1)); 
end


R = 0;
% Suma de las distancias intraset de todas las clases
sZ(2);
for l=1:sZ(2)   
    R = R + V(l); 
end

% V;
%R;
end

% Calcula la distancia interset de las 
% clases de las muestras etiquetadas 
% desde L


function R = intersetDist(X, L)    

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


% Obtenemos el vector de distancias intersets
% calculando cada punto sobre el resto de elementos
% ajenos a su clase. Num lleva el contaje de operaciones
% y se utiliza para el ajuste final.
V = 0;
num = 0;    

sX(1);
% Suma valores distancias
for j=1:sX(1)   
       
    L(j);
    
    for k=1 :sX(1)   
        
        L(k);
        
        %Elemento computable (Clases diferentes)
        if(L(j) ~= L(k))        
            %ind = find(C==L(k));
            V = V + dist(X(j), X(k));
            num = num + 1;
        end
          
    end 
                   
end


% Cálculos de valores medios del valor medio
V = V*(1/num);

R = V;

%R;
function n = eficaciaClustering(L, La)
% Sabiendo las clases reales L a partir
% de las muestras etiquetadas busca la
% asignaci�n m�s probable y devuelve
% el porcentaje m�s alto de calidad posible
% La m�s 

L;
La';


% Ordenamos las diferentes clases
% Cl clases reales 
% Cla clases naturales
Cl = [];
Cla = [];
sX = size(La);

sX
for i=1:sX(2)   
    
    ind  = find(Cl==L(i));
    ind2 = find(Cla==La(i));
    
    if (ind2 > 0)
    else
        sC = size(Cla);
        Cla(sC(2)+1) = La(i);
    end    
    
    if (ind > 0)
    else
        sC = size(Cl);
        Cl(sC(2)+1) = L(i);
    end    
end


% Tenemos en Cl las clases originales
% y en Cla las clases naturales
Cl;
Cla;
size(Cl);
size(Cla);


% Permutaciones posibles de clase de entrada
% versus de salida
c = nchoosek(Cla,3);
P = pick(Cla,3,'o');  

%P(3,:)

% Para cada permutaci�n
% Mapeo inicial de las clases
% definimos 

%P(1, :)
correctos = 0;


ps = size(P)

% Para cada permutacion
for p=1:ps(1)

% Sumamos todos los correctos para la permutacion concreta
for i=1:sX(2)
    
    %Buscamos el indice donde buscar la equivalencia en 
    %cada una de las permutaciones
    %ind  = find(Cla==La(i));
    ind  = find(P(p, :)==La(i));
    
    % Clase destino
    val = Cl(ind); 
    
    if (L(i) == val)
        correctos = correctos + 1;
    end
end

R(p) = correctos;
correctos = 0;

end


% C�lculo de las correspondencias parciales
% Lista de porcentajes

sX = size(L);

P

R


[mvalue, ind] = max(R)

disp('Permutaci�n: ')
P(ind,:)
disp('sobre -A>')
Cl

disp('Grado de acierto: ')
r = (mvalue/sX(1))*100

% Porcentajes
% na = size(C);
% n = na(2)
n = 0;

end

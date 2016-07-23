function [n, Cv] = numeroDeClases(A, Aorig)
% Dada una lista de Aristas parciales A, y las Aristas originales
% devuelve el numero de componentes
% conexas o clases en 'n'
% Cv contiene la pertenecia a cada clase




% Calculamos los elementos originales
% en Aorig para definir la base sobre
% la que se asignarán las clases naturales
 Corig = [];
 sX = size(Aorig);
 sX(1);
for i=1:sX(1)   
    a1 = Aorig(i, 1);
    a2 = Aorig(i, 2);
    
    ind = find(Corig==a1);
    if (ind > 0)
    else
        sC = size(Corig);
        Corig(sC(2)+1) = a1;
    end    

    ind = find(Corig==a2);
    if (ind > 0)
    else
        sC = size(Corig);
        Corig(sC(2)+1) = a2;
    end    
end
el = size(Corig);
elems = el(2)


% Asignacion de clases inicial
% Tantas como clases
qa = size(A);
Cv = [];    % Vector de clases
Cv = (1:qa(1));

% Iteramos sobre las aristas parciales
for i=1: qa(1)
    %A(i, :)  
    a1 = A(i, 1);
    a2 = A(i, 2);
      
      for j=i:qa(1)
          b1 = A(j, 1);
          b2 = A(j, 2);
          
          if (a1 == b1) || (a1 == b2) || (a2 == b1) || (a2 == b2) 
             Corig(j) = Corig(i);   
          end
          
      end
end 



% Buscamos número de clases
C = [];
Cv = Corig;
sX = size(Cv);

sX(2);
for i=1:sX(2)   
    
    ind = find(C==Cv(i));

    if (ind > 0)
    else
        sC = size(C);
        C(sC(2)+1) = Cv(i);
    end    
end


% Cv pertenencia a cada clase
% C vector de clases diferentes
Cv
C;


% Numero de clases
na = size(C);
n = na(2)

end

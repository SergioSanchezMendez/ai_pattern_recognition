function [n, Cv] = numeroDeClases(A)
% Dada una lista de Aristas A,
% devuelve el numero de componentes
% conexas o clases en 'n'
% Cv contiene la pertenecia a cada clase


A;

qa = size(A);
Cv = [];    % Vector de clases

% Asignacion de clases inicial
% Tantas como clases
Cv = (1:qa(1));


for i=1: qa(1)
    %A(i, :)  
    a1 = A(i, 1);
    a2 = A(i, 2);
      
      for j=i:qa(1)
          b1 = A(j, 1);
          b2 = A(j, 2);
          
          if (a1 == b1) || (a1 == b2) || (a2 == b1) || (a2 == b2) 
             Cv(j) = Cv(i);   
          end
          
      end
end 



% Buscamos número de clases
C = [];
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
Cv;
C;


% Numero de clases
na = size(C);
n = na(2);

end

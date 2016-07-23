function [Ac Lc] = generaNClases(A, D, n)
% Genera n clases a partir de la lista
% A de aristas y de sus pesos en D
%mediante varios procedimientos. (alfa/beta)
% Lc - Contiene los identificadores de las 
% clases para cada arista de Ac

% Lista aristas restantes del cálculo
% y pesos asociados
Ac = A;
Dc = D;     

elim = 0; % Numero de aristas eliminadas
nclases = intmin;


while nclases < n
   
   % Elimina arista 
   [Ac, Dc] = metodoAlfa(Ac, Dc); 
   elim = elim +1;
   
   
   Ac;
   
   % Cuenta numero de clases
   % Generaliza la expresion para permitir el uso de grafos
   % ya que al eliminar una arista se presume que se generan 
   % dos clases a partir de la única conexa donde se incluye 
   % la arista eliminada.
   [nclases, Lc] = numeroDeClases(Ac);
  
   sAc = size(Ac);
   
   % Lista de aristas eliminada por completo, no es posible alcanzar
   % exactamente n clases eliminando aristas.
%    if (sAc(2) < 1) 
%        return;
%    end


%    disp ('Aristas eliminadas:');
%    disp (elim);
end


end

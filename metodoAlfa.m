function [Ac, Dc] = metodoAlfa(A, D)
% Elimina una arista por el método alfa
% La de mayor peso
% A contiene la lista de arista
% D contiene los pesos
% Ac - Devuelve las nuevas aristas
Ac = [];
Dc = [];

qa = size(A);
[val, ind] = max(D);

%Aaux = [A(3, :)]

cnt = 1;
for i=1:qa(1)
    if(i == ind)
    else
        Ac(cnt, :) = A(i, :);
        cnt = cnt + 1;
    end
end


cnt = 1;
for i=1:qa(1)
    if(i == ind)
    else
        Dc(cnt) = D(i);
        cnt = cnt + 1;
    end
end

% Aaux(1:2) = [A(1:ind-1)]
% Ac(1:2) = [Aaux A(ind+1:qa(1))];
% 
% Daux(:) = [D(1:ind-1)];
% Dc(:) = [Daux D(ind+1:qa(1))];
%size(Ac);
%size(Dc);


% Numero de aristas eliminadas
elim = 0;

Ac;
Dc;

end

function clusteringBeta()

% Algoritmo Minimal Spaning Tree. 
% Busca las clases naturales a partir de
% una serie de muestras etiquetadas
% mediante el MST con las variantes de
% algoritmo alfa y beta


% S contiene las muestras etiquetadas


saved_file = './iris_nums.mat';

S = load('./iris_nums.mat', 'A');

X = S.A;
X1 = S.A(:,1:4);
L = S.A(:,5);       % Etiquetas o clases 


% Ahora dejamos de lado las etiquetas y buscamos
% las clases naturales a partir de los puntos en
% el espacio de caracteristicas



% A aristas del arbol A(i)=[z, v], z y v son muestras
% D - distancias por arista o pesos correspondientes
A = [];
D = [];


% Calculamos el MST
min = intmax;
Aaux = [];         % arista del minimo parcial
min;               % distancia del minimo parcial
%max = intmin




% Nodos pendientes vs Nodos tomados
% Se calcula en orden de llegada de las muestras 
Nt = [];

sC = size(X);
sC(1);
Np = (2:sC);      % Todos excepto el primer elemento
Nt(1) = 1;          % Cogemos el primer elemento

na =1;      % Indice al numero de aristas        


%while Np ~= 0

elim = 0;
remain = size(Np);
while(remain(2) > 0)
 
    % Buscamos min dist y extraemos   
    p = size(Nt);
    
    for i=1:p(2)
        
        q = size(Np);        
        for j=1:q(2)

           if(i ~= j)
               vali = Nt(i);
               valj = Np(j);
               % X(vali) devuelve solo el primer elemento
               % Adquirirlos todos se consigue mediante X(vali, :)
               d = dist(X(vali, :), X(valj, :));
               if (d < min)
                   min = d;
                   Aaux = [vali, valj];
                   elim = j;        % Da la posicion del vector de nodos pendientes
                                    % que contiene el valor a ser eliminado
                                    % e incluido en la lista de nodos
                                    % tomados 
               end
           end

        end
     
    end

   
    A(na, :) = Aaux;
    D(na) = min;
    na = na+1;
    min = intmax;
    
    aj = elim;                     % Posicion del nodo elegido
    Nt(p(2)+1) = Np(aj);           % Insertamos nodo
    
    qa = size(Np);
    
    Npaux = [Np(1:aj-1)];
    Np = [Npaux Np(aj+1:qa(2))];
    
    Np;
    
    elim = 0;
    remain = size(Np);
    remain
    
    % Hardcoded
    %remain = remain - 120;
end
    
  
% Ahora en A tenemos la lista de aristas del árbol 
% de expansión mínima 
% una de ellas. En Nt el orden de los nodos tomados
% D contiene los pesos de cada arista de A
    Nt;
    size(A);
    A;
    Np;
    D;
    
  

% Aplicamos el algoritmo alfa 
% Eliminamos ramas de forma progresiva hasta obtener
% n arboles. En este caso n será igual a las 3 clases.

% Nueva lista aristas agrupando N clases. Devuelve la
% lista de aristas con el identificador entero de la 
% clase a la que pertenece en Ac
% Lc - Contiene las clases asignadas a cada arista
[Ac, Lc] = generaNClasesBeta(A, D, 3);


Ac;
Lc;

% Verifica eficiencia. P porcentaje de muestras bien etiquetadas
% X1 muestras, L clases y Ac 
p = eficaciaClustering(L, Lc);


% Eficiencia y tiempo de proceso
p;
%t;


end

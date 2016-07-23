function discriminante()

% Implementa funcion discriminante
% mediante funciones potenciales.
% Entrena y posteriormente verifica
% la eficiencia de la funci�n.
% c(x)=i  hipip(x|i) >= hkpkp(x|k), Vk~=i  


% S contiene las muestras etiquetadas
saved_file = './iris_nums.mat';

S = load('./iris_nums.mat', 'A');

X = S.A;
X1 = S.A(:,1:4);
L = S.A(:,5);       % Etiquetas o clases 


% Test originales
% M   = X1(1:140, :);   % Muestras de entrenamiento
% Le  = L(1:140, :);    % Identificadores de muestras de entrenamiento
% 
% T   = X1(141:150, :); % Muestras a clasificar
% La  = L(141:150, :);  % Identificadores de muestras a clasificar para verificar


% Test con el 100% de las muestras
M   = X1(1:150, :);   % Muestras de entrenamiento
Le  = L(1:150, :);    % Identificadores de muestras de entrenamiento

T   = X1(1:150, :); % Muestras a clasificar
La  = L(1:150, :);  % Identificadores de muestras a clasificar para verificar



% Detectamos las clases
% C contenedor de clases 
% N elementos por clase
C = [];
N = [];
sX = size(L);

% Iteramos sobre las filas
sX(1);
for i=1:sX(1)   
    
    L(i);
    ind = find(C==L(i));

    
    % Clase registrada
    if (ind > 0)
        
        % La posicion C(ind) contiene la clase
        % La posicion mporClase(ind) contine el numero de repeticiones
        N(ind) = N(ind)+ 1;
                
    else
        sC = size(C);
        %sC(2); numero actual de clases en C 
        C(sC(2)+1) = L(i);
        N(sC(2)+1) = 1;
        
    end
    
end


C;
N;

%Calculamos el vector de probabilidades a priori Pi
Pi = [];
sX = size(C);
n = sX(2);              % N�mero de clases

% Iteramos sobre las filas
tot = sum(N);

for i=1:sX(2)   
    Pi(i) = N(i)/tot;    
end

% Pi contiene las probabilidades a priori de las clases
Pi;



% Calculamos la dispersi�n  mediante el promedio de las
% LDistancias de todas las muestras etiquetadas para 
% conocer la dispersi�n que se usar� para el c�lculo de las
% funciones potenciales. Aunque por organizaci�n se realizar�a
% en funciones posteriores, se calcula aqui para evitar repeticiones
% y aprovechar el hecho de que no es variable. g1=g2=...=gn=g
g = dispersion(M);




% Clasificaci�n
% Para el conjunto de muestras N realizamos
% el an�lisis de la clasificaci�n
sT = size(T);
sC = size(C);


% Para cada muestra calculamos cada una de las discriminantes por clase
% Se adaptan los valores para el conjunto de muestras etiquetadas M
% o conjunto de entrenamiento. De este modo se puede controlar de forma
% centralizada las muestras que intervienen en el reconocimiento y las 
% que intervienen en el entrenamiento

n;
total = 0;

% sT(2)
% sC(2)

for i=1:sT(1) 
    %disp(i)
    % Para cada clase su discriminante
    for j=1:sC(2)   
        % Calcula discriminante el valor de la discriminante
        % Fijamos la hi = 1 y la probabilidad a priori la pasamos
        % para ahorrar el c�lculo sT*sC veces.
        disc = calculaDiscriminante(T(i), C(j), M, Le, n, g, Pi(j), 1);
        D(i, j) = disc;
     
        %disp(j)    
        total = total +1;
    end
    
end

% Contiene los discriminantes por clase y muestra
% Procesamos y asignamos la clase a la mayor
total;
D


Cg = [];        % Clase ganadora

sD = size(D);
for i=1:sD(1)
    [maxvalue, ind] = max(D(i, :));
    Cg(i) = C(ind);
end

% Por cada elemento la clase que gana
Cg';



% Comparamos La con clases ganadoras
sG = size(Cg);
correctos = 0;
total= sG(2);
for i=1:sG(2)
    La(i);
    Cg(i);
    
    if (Cg(i) == La(i))
        correctos = correctos+1;
    end    
end

La;
total
correctos

% Porcentaje de acierto
p = (correctos/total)*100


end
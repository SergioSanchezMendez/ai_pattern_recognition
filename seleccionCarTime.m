function seleccionCar()

% Algoritmo best n de m. 
% Calcula las n mejores características mediante 
% la medida de calidad Q mínima, que busca la 
% mínima expresión de las distancias interset 
% y el máximo de las distancias intraset.


% S contiene las muestras etiquetadas
% n es la dimensionalidad de salida
timeA = date2unixsecs();

n = 2;

saved_file = './iris_nums.mat';

S = load('./iris_nums.mat', 'A');

X = S.A;
X1 = S.A(:,1:4);
L = S.A(:,5);       % Etiquetas o clases 



%Calculamos posibles combinaciones 
z = size(X1(1,:));
C = nchoosek(1:z(2), n);

%C(2,:)

%Calculamos las medidas de calidad de cada combinacion
%Q Vector de calidad de las combinaciones
sC = size(C);



%R = intrasetDist(X, L);
    


for i=1:sC(1)
    
    %C(i,:)
    %a1 = C(i,1);
    %a2 = C(i,2);
    
    % Devolvemos el vector con las muestras habiendo seleccionado las 
    % características
    Xcur = vectorSubselection(X, C(i, :));
    
    
    % Pasamos únicamente los elementos a computar eliminando un porcentaje
    % muy alto de multiplicaciones por cero en las características no
    % escogidas
    
    S = intersetDist(Xcur, L);       
    R = intrasetDist(Xcur, L);
     
    Q(i) = R/S;  % Medida de calidad. Buscamos minimizar Q     
end

C
Q


% Seleccionamos los valores mínimos de Q
[resultQuality, ind]=min(Q)

%Resultado final. Combinación escogida.
C(ind, :)

%Xplot = vectorSubselection(X, C(ind, :));
%plot(Xplot( : , 1), Xplot());


%plotClases(Xplot, L) 
%plot(1, 3,'o','MarkerSize',6)


%disp([B*W1])
% 
% % Plot data and classifiers
% scatterd(A); % scatter plot
% 
% % plot the 4 discriminant functions
%  plotc({W1,W2,W3});

%plotc({W1});

timeB = date2unixsecs();
time = timeB - timeA

end

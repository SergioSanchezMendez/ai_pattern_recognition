function test3()

A = gendath([50 50]); % Generate Highleyman�s classes, 50 objects / class


% Genera dos clases la '3' y la '5' con 50 muestras cada una
% con tres caracter�sticas cada una (entre 0 y 100)
% A = dataset(rand(100,3),genlab([50 50],[3 5]�));
% Etiqueta cada una de las tres caracter�sticas
% A = setfeatlab(A,[�r1�;�r2�;�r3�])

saved_file = './iris_nums.mat';

S = load('./iris_nums.mat', 'A');
%X = load('./iris_nums.mat', vars(1:10).name);

X = S.A;
X1 = S.A(:,1:4);
X2 = S.A(:,5);

%uint8(

X2


% Elementos de la primera columna del vector. La segunda contiene
% valores unitarios
A = dataset(X1,X2);


%A = S.Iris_dataExc(1, :)

% Training set C (20 objects / class)
% Test set D (30 objects / class)


%[C,D] = gendat(A,[20 20]);
% Select the training set of 40 = 2x20 objects
% and the test set of 160 = 2x80 objects
% Coge un 20% para el entrenamiento y un 80% para el test
% Son 20 de cada clase y 80 de cada clase

%El parametro determina el porcentaje para C
[B,C] = gendat(A,0.5);




% Compute classifiers


% W1 = ldc(C); % linear


% W1 = qdc(C); % quadratic
W1 = parzenc(C); % Parzen

% W1 = featself([],'NN',2)*ldc;
% W1 = setname(W1,'NN-FFS - ldc');


% 
% W4 = bpxnc(C,3); % Neural net with 3 hidden units
% 
% %D = S.A(6:150,1:4);
% X1 = S.A(120:135,1:4)
% C = dataset(X1,[2 2 2 2 2 2 2 2 2 2 2 2 2 1 1]')
% 
% % Compute and display classification errors
% disp([testc(D*W1),testc(D*W2),testc(D*W3)]);
%

disp([B*W1])
% 
% % Plot data and classifiers
% scatterd(A); % scatter plot
% 
% % plot the 4 discriminant functions
%  plotc({W1,W2,W3});

%plotc({W1});


end

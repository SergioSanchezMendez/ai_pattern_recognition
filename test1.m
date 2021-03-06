function test1()

A = gendath([50 50]); % Generate Highleyman�s classes, 50 objects / class


% Genera dos clases la '3' y la '5' con 50 muestras cada una
% con tres caracter�sticas cada una (entre 0 y 100)
% A = dataset(rand(100,3),genlab([50 50],[3 5]�));
% Etiqueta cada una de las tres caracter�sticas
% A = setfeatlab(A,[�r1�;�r2�;�r3�])

saved_file = './iris_nums.mat';

S = load('./iris_nums.mat', 'A')
%X = load('./iris_nums.mat', vars(1:10).name);

X = S.A;
X1 = S.A(1:15,1:4)
X2 = uint8(S.A(:,5));


%X2 = uint8(rand(3, 150))

C = dataset(X1,[1 1 1 1 1 1 1 1 1 1 1 1 1 2 2]')
%Z = [X(:,:,:)];

%A = S.Iris_dataExc(1, :)

% Training set C (20 objects / class)
% Test set D (30 objects / class)


%[C,D] = gendat(A,[20 20]);


% Compute classifiers
W1 = ldc(C); % linear
W2 = qdc(C); % quadratic
W3 = parzenc(C); % Parzen

%W4 = bpxnc(C,3); % Neural net with 3 hidden units

%D = S.A(6:150,1:4);
X1 = S.A(120:135,1:4)
C = dataset(X1,[2 2 2 2 2 2 2 2 2 2 2 2 2 1 1]')

% Compute and display classification errors
disp([testc(D*W1),testc(D*W2),testc(D*W3)]);


% Plot data and classifiers
scatterd(A); % scatter plot

% plot the 4 discriminant functions
plotc({W1,W2,W3});


end

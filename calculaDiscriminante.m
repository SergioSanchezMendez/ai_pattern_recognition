function disc = calculaDiscriminante(X, i, M, L, n, g, pi, hi)
% Devuelve el valor de la funci�n discriminante i
% para la muestra de entrada X. Con el conjunto de
% entrenamiento M (con sus identificadores de clases L).
% pi - probabilidad a priori de la clase i  
% hi - factor de la funci�n discriminante

pci = probabilidadCondicionada(X, i, M, L, n, g);
disc = pi*hi*pci;

end

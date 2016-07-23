function gamma = funcionPotencial(x, y, n, g)
% Devuelve el valor de de funcion potencial de 
% la muestra X desde la muestra etiquetada Y
% Se pasan para evitar cálculos repetidos:
% g - es la dispercion
% n - número de clases


% Aplicamos la funcion potencial
const = 1/(((2*pi)^(n/2))*g);
gamma = const*exp(-(dist(x(1,:), y(1, :))/(g^2)));


% Funcion potencial computacionalmente eficiente
%gamma = distEfic(x, y);

end

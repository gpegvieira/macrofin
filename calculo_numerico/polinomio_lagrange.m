% Polinômio de interpolação de Lagrange

clear
clc

% Entrada de dados
x = [1 , 3];
y = [3 , 7];
x_intermediario = 2.5;

% Processamento de dados
L1 = (x_intermediario - x(2)) / (x(1) - x(2));
L2 = (x_intermediario - x(1)) / (x(2) - x(1));
P = y(1) * L1 + y(2) * L2;

% Saída de dados
fprintf('O valor estimado manualmente do polinômio de interpolação de Lagrange é %.f.\n', P);

% Processamento de dados (função nativa)
autoP = interp1(x,y,x_intermediario,'linear');

% Saída de dados (função nativa)
fprintf('O valor estimado do polinômio de interpolação de Lagrange por função nativa do Matlab é %.f.\n', autoP);

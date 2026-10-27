%{
Programa Distância Euclidiana
Descrição: Este programa calcula a distância entre dois pontos de coordenadas no plano, informadas pelo usuário.
Autor: Gabriel P. Vieira
Data: 15/09/2026
Versão: 0.0.1
%}

% Limpeza de memória e tela
clear
clc

% Alocação de memória
x1 = 0;         % tipo double
y1 = 0;         % tipo double
x2 = 0;         % tipo double
y2 = 0;         % tipo double
distancia = 0;  % tipo double

% Entrada de dados
fprintf("Este programa calcula a distância entre dois pontos de coordenadas no plano, informadas por você.\n");   % informação acessória ao usuário
x1 = input(sprintf("Digite a abscissa do primeiro ponto: "));
y1 = input(sprintf("Digite a ordenada do primeiro ponto: "));
x2 = input(sprintf("Digite a abscissa do segundo ponto: "));
y2 = input(sprintf("Digite a ordenada do segundo ponto: "));

% Processamento de dados
distancia = sqrt((x2 - x1)^2 + (y2 - y1)^2);

% Saída de dados
fprintf("A distância entre os pontos (%.2f, %.2f) e (%.2f, %.2f) no plano é %.2f.\n", x1, y1, x2, y2, distancia);


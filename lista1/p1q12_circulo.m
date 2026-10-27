%{
Programa Círculo - 1.12
Descrição: Este programa calcula a área do círculo e o comprimento da circunferência de raio informado pelo usuário.
Autor: Gabriel P. Vieira
Data: 15/09/2026
Versão: 0.0.1
%}

% Limpeza de memória e tela
clear
clc

% Alocação de memória
raio = 0;               % tipo double
area = 0;               % tipo double
circunferencia = 0;     % tipo double

% Entrada de dados
raio = input(sprintf("Informe o raio do círculo para calcular sua área e o comprimento de sua circunferência: "));

% Processamento de dados
area = pi * raio^2;
circunferencia = 2 * pi * raio;

% Saída de dados
fprintf("A área do círculo é %.2f e o comprimento da circunferência é %.2f.\n", area, circunferencia);

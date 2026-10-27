%{
Programa Sinal
Descrição: Este programa lê o número imputado pelo usuário e informa se é positivo, negativo ou nulo.
Autor: Gabriel P. Vieira
Data: 15/09/2026
Versão: 0.0.1
%}

% Limpeza de memória e tela
clear
clc

% Alocação de memória
numero = 0;         % tipo double

% Entrada de dados
numero = input(sprintf("Digite um número para verificar se ele é positivo, negativo ou nulo: "));

% Processamento e saída de dados
if numero > 0
  fprintf("O número %.2f é positivo.\n", numero);
elseif numero == 0
  fprintf("O número %.2f é nulo.\n", numero);
else
  fprintf("O número %.2f é negativo.\n", numero);
end


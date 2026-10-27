%{
Programa Par ou Ímpar
Descrição: Este programa lê o número informado e imprime na tela se ele é par ou ímpar, caso seja inteiro não negativo.
Se não inteiro ou inteiro negativo, informa-se que o número não é válido.
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
numero = input(sprintf("Informe um número inteiro não negativo para verificar se ele é par ou ímpar: "));

% Processamento e saída de dados
if numero >=0 && mod(numero, 1) == 0
  if mod(numero, 2) == 0
    fprintf("O número %d é par.\n", numero);
  else
    fprintf("O número %d é ímpar.\n", numero);
  end
else
  fprintf("O número informado não é válido.\n");
end

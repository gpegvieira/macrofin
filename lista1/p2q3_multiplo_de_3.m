%{
Programa Múltiplo de 3 - 2.3
Descrição: Este programa lê o número informado pelo usuário, determina se é um múltiplo de 3 e imprime na tela se o é ou não.
Autor: Gabriel P. Vieira
Data: 15/09/2026
Versão: 0.0.1
%}

% Limpeza de memória e tela
clear
clc

% Alocação de memória
numero = 0;       % tipo double (observe-se que, se tiver parte decimal, não será múltiplo de 3)

% Entrada de dados
numero = input(sprintf("Informe um número para verificar se ele é múltiplo de 3: "));

% Processamento e saída de dados
if mod(numero, 1) != 0
  fprintf("O número %f não é múltiplo de 3.\n", numero);
elseif mod(numero, 3) == 0
  fprintf("O número %d é múltiplo de 3.\n", numero);
else
  fprintf("O número %d não é múltiplo de 3.\n", numero);
end

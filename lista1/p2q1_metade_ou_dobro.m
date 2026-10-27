%{
Programa Metade ou Dobro - 2.1
Descrição: Este programa lê o número informado, multiplicando-o por 2 se ele for menor que 10, dividindo-o por 2 se ele for
maior que ou igual a 10 e menor que ou igual a 20 e imprimindo na tela que o número não é válido se ele for maior que 20.
Autor: Gabriel P. Vieira
Data: 15/09/2026
Versão: 0.0.1
%}

% Limpeza de memória e tela
clear
clc

% Alocação de memória
numero = 0;           % tipo double

% Entrada de dados
numero = input(sprintf("Informe um número: "));

% Processamento e saída de dados
if numero < 10
  saida = 2*numero;
  fprintf("%.2f\n", saida);
elseif numero >= 10 && numero <= 20
  saida = numero / 2;
  fprintf("%.2f\n", saida);
else
  fprintf("Esse número não é válido.\n");
end

%{
Programa Ordenação
Descrição: Este programa recebe do usuário três números reais e imprime-os em ordem crescente.
Autor: Gabriel P. Vieira
Data: 15/09/2026
Versão: 0.0.1
%}

% Limpeza de memória e tela
clear
clc

% Alocação de memória
a = 0;              % tipo double
b = 0;              % tipo double
c = 0;              % tipo double
maior = 0;          % tipo double
medio = 0;          % tipo double
menor = 0;          % tipo double

% Entrada de dados
a = input(sprintf("Digite o primeiro número: "));
b = input(sprintf("Digite o segundo número: "));
c = input(sprintf("Digite o terceiro número: "));

% Processamento de dados
if a >= b && a >= c
  maior = a;
  if b >= c
    medio = b;
    menor = c;
  else
    medio = c;
    menor = b;
  end
elseif b >= a && b >= c
  maior = b;
  if a >= c
    medio = a;
    menor = c;
  else
    medio = c;
    menor = a;
  end
else
  maior = c;
  if a >= b
    medio = a;
    menor = b;
  else
    medio = b;
    menor = c;
  end
end

% Saída de dados
fprintf("Em ordem crescente, os números são %.2f, %.2f e %.2f.\n", menor, medio, maior)


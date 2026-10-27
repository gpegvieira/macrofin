%{
Programa Soma Input - 1.3
Descrição: Este programa calcula a soma de dois números fornecidos pelo usuário e imprime-a na tela.
Autor: Gabriel P. Vieira
Data: 03/09/2026
Versão: 0.0.1
%}

% Limpeza de memória e tela
clear
clc

% Alocação de memória

% Entrada de dados
a = input("Digite um número: ");
b = input("Digite mais um número: ");

% Processamento de dados
soma = a + b;

% Saída de dados
if fix(a) == a && fix(b) == b
	fprintf("A soma dos números %d e %d é %d.\n", a, b, soma);
  % imprime na tela a frase com o valor de soma (sem casas decimais, caso a, b sejam inteiros)
else
	fprintf("A soma dos números %f e %f é %f.\n", a, b, soma);
	% imprime na tela a frase com o valor de soma (com casas decimais, caso a ou b tenha parte fracionária)
end

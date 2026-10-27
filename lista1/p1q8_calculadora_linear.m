%{
Programa Calculadora Linear
Descrição: Resolve para x a equação linear ax=b, para valores de a e b dados pelo usuário.
Autor: Gabriel P. Vieira
Data: 15/09/2026
Versão: 0.0.1
%}

% Limpeza de memória e tela
clear
clc

% Alocação de memória

% Entrada de dados

fprintf("Este programa resolve para x a equação linear ax=b.\n");   % explicação acessória ao usuário
a = input("Digite um valor para a: ");
b = input("Digite um valor para b: ");

% Processamento de dados
x = b/a;

% Saída de dados
fprintf("O valor de x é %f.\n", x);

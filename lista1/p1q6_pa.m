%{
Programa PA
Descrição: Este programa utiliza o paradigma sequencial para calcular o n-ésimo termo e a soma dos n primeiros termos de uma progressão aritmética, dados os valores de n, do primeiro termo e da razão fornecidos pelo usuário.
Autor: Gabriel P. Vieira
Data: 15/09/2026
Versão: 0.0.1
%}

% Limpeza de memória e tela
clear
clc

% Alocação de memória

% Entrada de dados

fprintf("Este programa irá fornecer-lhe o valor do n-ésimo termo e a soma dos n primeiros termos de uma progressão aritmética, dados os valores de n, do primeiro termo e da razão fornecidos por você. Por favor, digite apenas números inteiros.\n");

a_1 = input("Digite o valor desejado para o primeiro termo (a_1) da PA: ");
r = input("Digite o valor desejado para a razão da PA: ");
n = input("Digite o número n de termos da PA: ");

% Processamento de dados

a_n = a_1 + r*(n-1);    % Cálculo do n-ésimo termo
S_n = (a_1 + a_n)*n/2;  % Cálculo da soma dos n primeiros termos

% Saída de dados
fprintf("O valor do n-ésimo termo da PA com primeiro termo %d e razão %d, para n = %d, é %d.\n", a_1, r, n, a_n);
fprintf("O valor da soma dos n primeiros termos dessa PA é %d.\n", S_n);

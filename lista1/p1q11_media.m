%{
Programa Média Aritmética - 1.11
Descrição: Este programa solicita ao usuário quatro números e calcula a média aritmética deles.
Autor: Gabriel P. Vieira
Data: 15/09/2026
Versão: 0.0.1
%}

% Limpeza de memória e tela
clear
clc

% Alocação de memória
a = 0;        % tipo double
b = 0;        % tipo double
c = 0;        % tipo double
d = 0;        % tipo double
media = 0;    % tipo double

% Entrada de dados
fprintf("Este programa calcula a média aritmética simples de quatro números fornecidos por você.\n");   % explicação acessória ao usuário
a = input("Digite o primeiro número: ");
b = input("Digite o segundo número: ");
c = input("Digite o terceiro número: ");
d = input("Digite o quarto número: ");

% Processamento de dados
media = (a+b+c+d)/4;

% Saída de dados
fprintf("A média aritmética dos quatro números fornecidos é %.2f.\n", media);

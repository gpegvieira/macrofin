%{
Programa Classificação Indicativa - 2.4
Descrição: Este programa recebe do usuário o nome e a idade e informa que, se ele tiver menos de 18 anos, não pode assistir a um filme.
Autor: Gabriel P. Vieira
Data: 15/09/2026
Versão: 0.0.1
%}

% Limpeza de memória e tela
clear
clc

% Alocação de memória
nome = "";        % tipo string
idade = 0;        % se for em anos, pode ser tipo int8

% Entrada de dados
nome = input(sprintf("Qual é o seu nome?\n"), "s");
idade = input(sprintf("Qual é a sua idade?\n"));

% Processamento de dados
msg_menor = strcat(nome, ", por restrições de idade, você não pode assistir a este filme.\n");
msg_adulto = strcat(nome, ", você atende ao critério de classificação indicativa deste filme.\n");

% Processamento e saída de dados
if idade < 18
  fprintf(msg_menor);
else
  fprintf(msg_adulto);
end

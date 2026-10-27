%{
Programa Saudação - 1.4
Descrição: Este programa pergunta o nome do usuário e imprime na tela a saudação "Oi", seguida do nome fornecido.
Autor: Gabriel P. Vieira
Data: 03/09/2026
Versão: 0.0.1
%}

% Limpeza de memória e tela
clear
clc

% Alocação de memória

% Entrada de dados
nome = input("Qual é o seu nome? ", "s");    #(pede-se o nome do usuário)

% Processamento de dados
mensagem = sprintf("Oi, %s\n", nome);

% Saída de dados
fprintf("%s\n", mensagem)

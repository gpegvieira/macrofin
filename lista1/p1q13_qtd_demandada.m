%{
Programa Quantidade Demandada
Descrição: Este programa calcula a quantidade demandada de um bem, dado o seu preço e a renda do consumidor, considerando que
a função de demanda deste é dada pela razão entre renda e preço.
Autor: Gabriel P. Vieira
Data: 15/09/2026
Versão: 0.0.1
%}

% Limpeza de memória e tela
clear
clc

% Alocação de memória
renda = 0;    % tipo double
preco = 0;    % tipo double
qtd = 0;      % tipo double

% Entrada de dados
renda = input(sprintf("Digite a renda do consumidor: "));
preco = input(sprintf("Digite o preço do bem: "));

% Processamento de dados
qtd = renda / preco;

% Saída de dados
fprintf("A quantidade demandada do bem é de %.2f unidade(s).\n", qtd);

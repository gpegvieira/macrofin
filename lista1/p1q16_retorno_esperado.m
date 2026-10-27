%{
Programa Retorno Esperado (CAPM)
Descrição: Este programa calcula o retorno esperado de um ativo, dados o retorno do ativo livre de risco, o retorno da carteira
de mercado e o coeficiente de sensibilidade (beta) do retorno do ativo a variações no prêmio de risco de mercado.
Autor: Gabriel P. Vieira
Data: 15/09/2026
Versão: 0.0.1
%}

% Limpeza de memória e tela
clear
clc

% Alocação de memória
rf = 0;         % tipo double
rm = 0;         % tipo double
beta = 0;       % tipo double
esp_r = 0;      % tipo double

% Entrada de dados
fprintf("Este programa calcula o retorno esperado de um ativo, dados o retorno do ativo livre de risco, o retorno da carteira de mercado e o coeficiente de sensibilidade (beta) do retorno do ativo a variações no prêmio de risco de mercado, conforme o CAPM.\n"); % informe acessório ao usuário
rf = input(sprintf("Informe o retorno do ativo livre de risco: "));
rm = input(sprintf("Informe o retorno da carteira de mercado: "));
beta = input(sprintf("Informe o coeficiente de sensibilidade do retorno do ativo a variações no prêmio de risco de mercado: "));

% Processamento de dados
esp_r = rf + beta * (rm - rf);      % cálculo do retorno esperado

% Saída de dados
fprintf("O retorno esperado do ativo é %.2f.\n", esp_r);

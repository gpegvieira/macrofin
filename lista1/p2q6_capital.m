%{
Programa Capital do Sul
Descrição: Este programa lê uma string informada pelo usuário e determina se ela corresponde ao nome de uma capital da região Sul do Brasil.
Autor: Gabriel P. Vieira
Data: 15/09/2026
Versão: 0.0.1
%}

% Limpeza de memória e tela
clear
clc

% Alocação de memória
entrada = "";
lista = {"Curitiba", "Florianopolis", "Porto Alegre"};
capital = 0;

% Entrada de dados
entrada = input(sprintf("Informe o nome de uma cidade para verificar se ela é capital de um dos Estados do Sul do Brasil. Por favor, omita acentos e cedilhas: "), "s");

% Processamento de dados
i = 1
while i <= numel(lista)
  if strcmp(entrada, lista{i})
    capital = 1;
  end
  i=i+1;
end

% Saída de dados
if capital == 1
  fprintf(strcat(entrada, " é uma capital da Região Sul do Brasil.\n"));
else
  fprintf(strcat(entrada, " não é uma capital da Região Sul do Brasil.\n"));
end

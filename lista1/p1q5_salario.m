%{
Programa Salário
Descrição: Este programa calcula o salário bruto, o salário líquido e o total de descontos salariais de um professor horista na Universidade XYZ, dado o número de horas trabalhadas informado pelo usuário e considerando uma alíquota de 30% de imposto sobre a renda e um valor de R$ 40,00 para a hora-aula.
Autor: Gabriel P. Vieira
Data: 03/09/2026
Versão: 0.0.1
%}

% Limpeza de memória e tela
clear
clc

% Alocação de memória
valor_hora_aula = 40;
aliquota = 0.3;

% Entrada de dados
fprintf("Este programa calcula o salário bruto, o salário líquido e o total de descontos salariais de um professor horista na Universidade XYZ, considerando uma alíquota de 30%% de imposto sobre a renda e um valor de R$ 40,00 para a hora-aula.\n");
horas = input("Informe o número de horas trabalhadas no período considerado: ");

% Processamento de dados
salario_bruto = valor_hora_aula * horas;
descontos = aliquota * salario_bruto;
salario_liquido = salario_bruto - descontos;

% Saída de dados
fprintf("O valor do salário bruto no período considerado é de R$ %.2f.\n", salario_bruto);
fprintf("O valor do salário líquido no período considerado é de R$ %.2f.\n", salario_liquido);
fprintf("O total de descontos salariais tributários no período considerado é de R$ %.2f.\n", descontos);

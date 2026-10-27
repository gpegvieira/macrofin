%{
Programa Calculadora Quadrática
Descrição: Resolve a equação do 2º grau ax²+bx+c=0, para valores de a, b e c dados pelo usuário.
Autor: Gabriel P. Vieira
Data: 15/09/2026
Versão: 0.0.1
%}

% Limpeza de memória e tela
clear
clc

% Alocação de memória

% Entrada de dados
fprintf("Este programa encontra os valores de x que satisfazem a equação quadrática ax²+bx+c=0.\n");  % explicação acessória ao usuário
a = input("Digite um valor para a: ");
b = input("Digite um valor para b: ");
c = input("Digite um valor para c: ");

% Processamento de dados
delta = b^2 - 4*a*c;

if delta >= 0
  x1 = (-b+sqrt(delta))/(2*a);
  x2 = (-b-sqrt(delta))/(2*a);

  	% Saída de dados para o usuário (caso delta > 0)
  	if delta > 0
		  fprintf("Os valores de x que satisfazem a equação quadrática %.2fx²+%.2fx+%.2f=0 são %.2f e %.2f.\n", a, b, c, x1, x2);
    % Saída de dados para o usuário (caso delta = 0)
    else
      fprintf("O valor de x que satisfaz a equação quadrática %.2fx²+%.2fx+%.2f=0 é %.2f.\n", a, b, c, x1);
    end
else
   alfa = -b/(2*a);
   beta = sqrt(delta)/(2*a);

  % Saída de dados para o usuário (caso delta < 0)
  fprintf("A equação quadrática %.2fx²+%.2fx+%.2f=0 tem duas raízes complexas: %.2f+%.2fi e %.2f-%.2fi.\n", a, b, c, alfa, beta, alfa, beta);

  end

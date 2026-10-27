% Exercícios computacionais IS-LM
% 2.2 (i)

clear
clc

% Parâmetros exógenos

G = 290.412356;
T = 55.123456;
M_P = 1800.356712;

%% Implementação: Newton-Raphson multivariado

% Vetor de resíduos do sistema: F(x) = [F1; F2] = 0
% x(1) = Y (produto); x(2) = i (taxa de juros)

F = @(x) [610.356712+0.623456*(x(1)-T)-22.412356*log(x(2)+2.142356)+G;
          5.142356*exp(0.001234*x(1))-310.912345*sqrt(x(2))-M_P];

%% Implementação: Newton-Raphson multivariado pela função nativa

x_atual = [2500.0; 5.0];

opcoes = optimset('Display', 'off');
[x_nativo, ~, flag] = fsolve(F, x_atual, opcoes);

Y_newton_fsolve = x_nativo(1);
i_newton_fsolve = x_nativo(2);


% Resultados

fprintf('Função nativa: Produto: Y = %.4f; Taxa de juros: i = %.4f\n', Y_newton_fsolve, i_newton_fsolve);



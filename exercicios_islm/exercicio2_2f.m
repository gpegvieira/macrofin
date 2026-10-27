% Exercícios computacionais IS-LM
% 2.2 (f)

clear
clc

% Parâmetros exógenos

G = 450.789123;
T = 120.356712;
M_P = 800.142356;


%% Implementação: Newton-Raphson multivariado

% Vetor de resíduos do sistema: F(x) = [F1; F2] = 0
% x(1) = Y (produto); x(2) = i (taxa de juros)

F = @(x) [310.123456+0.689123*(x(1)-T)+950.412356*(x(2)+0.012345)^(-0.356712)+G-x(1);
          0.512345*x(1)+320.142356/(x(2)+0.001234)-M_P];

% Jacobiana (matriz das derivadas parciais, calculadas analiticamente)
% Função Jacobiana J(x)
% x(1) -> x1 (Produto Y), x(2) -> x2 (Taxa de juros i)

J = @(x) [ 0.689123 - 1, 950.412356 * (-0.356712) * (x(2) + 0.012345)^(-1.356712);
           0.512345, -320.142356 ./ ((x(2) + 0.001234).^2) ];

%% Implementação: Newton-Raphson multivariado pela função nativa

x_atual = [2500.0; 5.0];

opcoes = optimset('Display', 'off');
[x_nativo, ~, flag] = fsolve(F, x_atual, opcoes);

Y_newton_fsolve = x_nativo(1);
i_newton_fsolve = x_nativo(2);


% Resultados

fprintf('Função nativa: Produto: Y = %.4f; Taxa de juros: i = %.4f\n', Y_newton_fsolve, i_newton_fsolve);
% Obs.: A taxa de juros resulta fortemente dependente do chute inicial.



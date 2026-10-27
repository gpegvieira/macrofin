% Exercícios computacionais IS-LM
% 2.2 (d)

clear
clc

% Parâmetros exógenos

G = 500.412356;
T = 110.654321;
M_P = 1200.789123;


%% Implementação: Newton-Raphson multivariado

% Vetor de resíduos do sistema: F(x) = [F1; F2] = 0
% x(1) = Y (produto); x(2) = i (taxa de juros)

F = @(x) [120.356712 + 0.723456*sqrt(x(1)-T) + 680.142356*exp(-0.089123*x(2)) + G - x(1);
          0.000456*(x(1))^2+250.912345*x(2)^(-0.512345) - M_P];

% Jacobiana (matriz das derivadas parciais, calculadas analiticamente)
J = @(x) [ (0.361728 ./ sqrt(x(1) - T)) - 1,   -60.61622723 * exp(-0.089123 * x(2));
           0.000912 * x(1),                     -128.5529897 * x(2)^(-1.512345) ];

% Chutes iniciais
x_atual = [2500.0; 5.0];
tol = 1e-15;
max_iter = 1000;

for iter = 1:max_iter
  residuo = F(x_atual);
  erro_passo = max(abs(residuo));

  if erro_passo < tol
    fprintf('Sucesso na convergência por Newton-Raphson multivariado em %d iterações.\n', iter);
    break;
  end

  J_local = J(x_atual);
  dx = - J_local \ residuo;

  x_atual = x_atual + dx;

end

Y_newton_calc = x_atual(1)
i_newton_calc = x_atual(2)



%% Implementação: Newton-Raphson multivariado pela função nativa

x_atual = [2500.0; 5.0];

opcoes = optimset('Display', 'off');
[x_nativo, ~, flag] = fsolve(F, x_atual, opcoes);

Y_newton_fsolve = x_nativo(1);
i_newton_fsolve = x_nativo(2);


% Resultados

fprintf('Implementação no código: Produto: Y = %.4f; Taxa de juros: i = %.4f\n', Y_newton_calc, i_newton_calc);
fprintf('Função nativa: Produto: Y = %.4f; Taxa de juros: i = %.4f\n', Y_newton_fsolve, i_newton_fsolve);




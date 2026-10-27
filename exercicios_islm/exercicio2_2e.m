% Exercícios computacionais IS-LM
% 2.2 (e)

clear
clc

% Parâmetros exógenos

G = 280.654321;
T = 60.312345;
M_P = 950.123456;


%% Implementação: Newton-Raphson multivariado

% Vetor de resíduos do sistema: F(x) = [F1; F2] = 0
% x(1) = Y (produto); x(2) = i (taxa de juros)

F = @(x) [850.142356 + 180.356712*log(x(1)-T+5.123456)-12.912345*x(2)+G - x(1);
          0.456712*x(1)-0.001234*(x(2))^3+85.142356-M_P];

% Jacobiana (matriz das derivadas parciais, calculadas analiticamente)
% Função Jacobiana J(x)
% x(1) -> x1 (Produto Y), x(2) -> x2 (Taxa de juros i)

J = @(x) [ (180.356712 ./ (x(1) - T + 5.123456)) - 1,   -12.912345;
           0.456712, -0.003702 * (x(2))^2 ];

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




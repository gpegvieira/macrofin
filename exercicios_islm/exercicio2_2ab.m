% Exercícios computacionais IS-LM
% 2.2 (a, b)

clear
clc

% Parâmetros exógenos
G = 350.123456;
T = 80.987654;
M_P = 1500.412356;


%% Implementação: Newton-Raphson multivariado

% Vetor de resíduos do sistema: F(x) = [F1; F2] = 0
% x(1) = Y (produto); x(2) = i (taxa de juros)

F = @(x) [log(1.235678 * (x(1) - T)) + 450.912345 * exp(-0.056789 * x(2)) + G - x(1);
          0.356712 * x(1)^2 - 120.412356 * sqrt(x(2)) - M_P];

% Jacobiana (matriz das derivadas parciais, calculadas analiticamente)
J = @(x) [ (1 / (x(1) - T)) - 1,  450.912345 * (-0.056789) * exp(-0.056789 * x(2));
           2 * 0.356712 * x(1),   -120.412356 * (0.5 / sqrt(x(2)))  ];

% Chutes iniciais
x_atual = [3000.0; 5.0];
tol = 1e-6;
max_iter = 100;

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

x_atual = [3000.0; 5.0];

opcoes = optimset('Display', 'off');
[x_nativo, ~, flag] = fsolve(F, x_atual, opcoes);

Y_newton_fsolve = x_nativo(1);
i_newton_fsolve = x_nativo(2);


% Resultados

fprintf('Implementação no código: Produto: Y = %.4f; Taxa de juros: i = %.4f\n', Y_newton_calc, i_newton_calc);
fprintf('Função nativa: Produto: Y = %.4f; Taxa de juros: i = %.4f\n', Y_newton_fsolve, i_newton_fsolve);







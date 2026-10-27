% Exercícios computacionais IS-LM
% 2.2 (c)

clear
clc

% Parâmetros exógenos
G = 410.987654;
T = 95.123456;
M_P = 650.412356;

%% Implementação: Newton-Raphson multivariado

% Vetor de resíduos do sistema: F(x) = [F1; F2] = 0
% x(1) = Y (produto); x(2) = i (taxa de juros)
F = @(x) [ x(1) - (520.612345 + 0.652134*(x(1)-T)^0.923456 - 18.412356*x(2)^2 + G);
           12.356712*x(1)^0.612345 + 45.912345*log(x(2)+1.023456) - M_P ];

% Jacobiana (matriz das derivadas parciais, calculadas analiticamente)
J = @(x) [ 1 - 0.652134*0.923456*(x(1)-T)^(-0.076544),  2*18.412356*x(2);
           12.356712*0.612345*x(1)^(-0.387655),          45.912345/(x(2)+1.023456) ];


x = [2000; 10];
tol = 1e-6; max_iter = 100; convergiu = false;

% Iterações
for k = 1:max_iter
  dx = -J(x) \ F(x);
  x = x + dx;
  fprintf('Iteracao n. %d:  Y=%.8f,  i=%.8f\n', k, x(1), x(2));
  if ~isreal(x) || x(1) <= T || x(2) <= -1.023456
    disp('Fora do dominio'); break
  end
  if norm(dx, inf) < tol && max(abs(F(x))) < tol
    convergiu = true; break
  end
end

if convergiu
  fprintf('Y* = %.8f   i* = %.8f\n', x(1), x(2));
end



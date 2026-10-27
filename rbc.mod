% =========================================================
% Modelo RBC simples (Dynare)
% - Utilidade log: u(c) = log(c)
% - Trabalho inelástico
% - Produção Cobb-Douglas: y = exp(a) * k(-1)^alpha
% - Choque de produtividade AR(1)
% =========================================================

var y c k i a;
varexo e;

parameters alpha beta delta rho sigma_e;

alpha   = 0.33;   % participação do capital
beta    = 0.99;   % fator de desconto
delta   = 0.025;  % depreciação
rho     = 0.95;   % persistência da produtividade
sigma_e = 0.01;   % desvio-padrão do choque

model;
  % Equação de Euler
  1/c = beta * (1/c(+1)) * (alpha*exp(a(+1))*k^(alpha-1) + 1 - delta);

  % Restrição de recursos
  c + i = y;

  % Acumulação de capital
  k = i + (1-delta)*k(-1);

  % Função de produção
  y = exp(a) * k(-1)^alpha;

  % Processo da produtividade (TFP)
  a = rho*a(-1) + e;
end;

% Estado estacionário analítico
steady_state_model;
  a = 0;
  k = (alpha*beta/(1 - beta*(1-delta)))^(1/(1-alpha));
  y = k^alpha;
  i = delta*k;
  c = y - i;
end;

shocks;
  var e; stderr sigma_e;
end;

steady;
check;

% Simulação estocástica (aproximação de 1ª ordem) com IRFs de 40 períodos
stoch_simul(order=1, irf=40, periods=0) y c k i a;

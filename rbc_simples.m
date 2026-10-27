%% run_rbc_octave.m - Roda o modelo RBC no Dynare usando Octave
clear; close all; clc;

% Ajuste para a pasta "matlab" da sua instalação do Dynare
addpath('C:\dynare\6.2\matlab');

%% 1) Executa o modelo
dynare rbc noclearall nograph

%% 2) Funções de impulso-resposta
horizonte = 0:options_.irf-1;
vars = {'y','c','i','k','a'};
nomes = {'Produto','Consumo','Investimento','Capital','Produtividade'};

figure('Name','IRFs - Choque de produtividade');
for j = 1:numel(vars)
    subplot(2,3,j);
    irf = oo_.irfs.([vars{j} '_e']);
    plot(horizonte, 100*irf, 'LineWidth', 1.8); hold on;
    plot([horizonte(1) horizonte(end)], [0 0], 'k--');   % substitui yline
    title(nomes{j}); xlabel('Trimestres'); ylabel('% desvio do EE');
    grid on;
end

%% 3) Simulação estocástica
T = 200;
randn('state', 123);                                      % substitui rng
e_sim = sqrt(M_.Sigma_e) * randn(1, T);
y_sim = simult_(M_, options_, oo_.dr.ys, oo_.dr, e_sim', 1);

idx = @(nome) find(strcmp(cellstr(M_.endo_names), nome));
y_ts = y_sim(idx('y'), 2:end);
c_ts = y_sim(idx('c'), 2:end);
i_ts = y_sim(idx('i'), 2:end);

figure('Name','Simulação');
plot(1:T, 100*log(y_ts./mean(y_ts)), 1:T, 100*log(c_ts./mean(c_ts)), ...
     1:T, 100*log(i_ts./mean(i_ts)), 'LineWidth', 1.2);
legend('Produto','Consumo','Investimento'); xlabel('Período');
ylabel('% desvio da média'); grid on;

fprintf('\nDesvio-padrão relativo ao produto:\n');
fprintf('  sigma(c)/sigma(y) = %.3f\n', std(log(c_ts))/std(log(y_ts)));
fprintf('  sigma(i)/sigma(y) = %.3f\n', std(log(i_ts))/std(log(y_ts)));
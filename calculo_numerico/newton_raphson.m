% Método de Newton-Raphson Univariado

clear
clc

% Entrada de dados

    % Função
    f = @(x) x.^3 - 9;
    % Primeira derivada
    df = @(x) 3*x.^2;
    % Chute inicial (x_0)
    x = 3;
    % Margem de tolerância
    tolerancia = 10.^-6;
    max_iteracoes = 10;
    
% Processamento de dados

for iteracao = 1:max_iteracoes
    % Cálculo de f(x) e f'(x)
    valor_f = f(x);
    valor_df = df(x);

    % Fórmula de Newton-Raphson
    x_calc = x - (valor_f / valor_df);
    fprintf('Iteração nº %d, x anterior = %f, x novo = %f.\n', iteracao, x, x_calc);
    
    % Quebra caso menor que margem de tolerância
    if abs(x_calc - x) < tolerancia
        fprintf('Convergência ocorreu na iteracao nº %d, com x anterior = %f e x novo = %f.\n', iteracao, x, x_calc);
        x = x_calc;
        break;
    end;
    
    % Atualização para a próxima rodada
    x = x_calc;

end;
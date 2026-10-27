% Exercícios computacionais - IS-LM
% 2a - Newton-Raphson multivariado

% Equilibrio IS/LM por Newton-Raphson multivariado (MATLAB / GNU Octave)
clear
clc


G = 350.123456; T = 80.987654; MP = 1500.412356;
tol = 1e-6; maxit = 200;

% ---- Sistema F(Y,i)=0 e Jacobiano analitico ----
F = @(x) [ x(1) - (log(1.235678*(x(1)-T)) + 450.912345*exp(-0.056789*x(2)) + G);
           0.356712*x(1)^2 - 120.412356*sqrt(x(2)) - MP ];
J = @(x) [ 1 - 1/(x(1)-T),  450.912345*0.056789*exp(-0.056789*x(2));
           2*0.356712*x(1), -120.412356/(2*sqrt(x(2))) ];

% ---- (1) Newton PURO a partir do palpite pedido: Y0=3000, i0=5% ----
fprintf('=== Newton puro, [Y0; i0] = [3000; 0.05] ===\n');
x = [3000; 0.05];
for k = 1:maxit
    dx = -J(x) \ F(x);
    x  = x + dx;
    fprintf('it %2d  Y=%14.8f  i=%14.8f\n', k, x(1), x(2));
    if ~isreal(x) || any(isnan(x)) || x(2) <= 0 || x(1) <= T
        fprintf('>> DIVERGIU: i<=0 (sqrt de negativo) ou Y<=T (log invalido). Sem convergencia.\n\n');
        break
    end
    if norm(dx, inf) < tol, break, end
end

% ---- (2) Newton robusto: variavel s = sqrt(i) + busca linear (backtracking) ----
% Com s, o LM vira polinomial e i = s^2 >= 0 automaticamente.
fprintf('=== Newton amortecido em (Y, s=sqrt(i)), mesmo palpite ===\n');
Fs = @(z) [ z(1) - (log(1.235678*(z(1)-T)) + 450.912345*exp(-0.056789*z(2)^2) + G);
            0.356712*z(1)^2 - 120.412356*z(2) - MP ];
Js = @(z) [ 1 - 1/(z(1)-T),  450.912345*0.056789*2*z(2)*exp(-0.056789*z(2)^2);
            2*0.356712*z(1), -120.412356 ];
z = [3000; sqrt(0.05)];
for k = 1:maxit
    dz = -Js(z) \ Fs(z);  t = 1;
    while (z(1)+t*dz(1) <= T || norm(Fs(z+t*dz)) >= norm(Fs(z))) && t > 1e-12
        t = t/2;
    end
    z = z + t*dz;
    fprintf('it %3d  Y=%14.8f  i=%16.6f  ||F||=%.3e  passo=%.2e\n', ...
            k, z(1), z(2)^2, norm(Fs(z)), t);
    if norm(t*dz, inf) < tol && norm(Fs(z)) < tol, break, end
end
Ystar = z(1); istar = z(2)^2;
fprintf('\nEquilibrio: Y* = %.8f   i* = %.6f\n', Ystar, istar);
r = Fs(z);
fprintf('Residuos: IS = %.2e   LM = %.2e\n', r(1), r(2));

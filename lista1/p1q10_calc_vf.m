%{
Programa Calculadora Valor Futuro
Descrição: Este programa calcula e imprime na tela o valor capitalizado de um produto financeiro, dados o capital, o prazo de investimento e a taxa de juros pelo usuário.
Autor: Gabriel P. Vieira
Data: 15/09/2026
Versão: 0.0.1
%}

% Limpeza de memória e tela
clear
clc


% Alocação de memória
vp = 0;             % Valor presente (capital)                                    float
i = 0;              % Taxa de juros                                               float
n = 0;              % Período de tempo (prazo de investimento)                    float
vf = 0;             % Valor futuro (valor capitalizado)                           float
regime = 0;         % Juros simples ou juros compostos                            float
convencao = 0;      % Convenção exponencial ou linear para períodos não inteiros  float


% Entrada de dados
fprintf("Este programa calcula o valor futuro de um empréstimo ou investimento. Por favor, utilize sempre o ponto como separador decimal.\n");      % Explicação ao usuário

%% Entrada do valor presente
vp = input("Primeiramente, digite o valor inicial ou presente na unidade monetária de sua escolha. Por favor, digite um valor não negativo.\n");

while vp < 0
	vp = input("Por favor, digite um valor inicial não negativo.\n");
end

%% Escolha do regime de capitalização
regime = input("Agora, selecione o regime de capitalização. Digite 0 para juros compostos ou 1 para juros simples.\n");

while regime ~=0 && regime ~= 1
	regime = input("Entrada inválida. Digite 0 para selecionar a capitalização por juros compostos ou 1 para selecionar a capitalização por juros simples.\n");
end

%% Entrada do número de períodos
n = input("Escolha o número de períodos correspondentes à duração da aplicação.\n");
while n <= 0
	n = input("Por favor, informe um valor positivo para o período de tempo.\n");
end

%% Escolha da convenção para períodos não inteiros sob capitalização composta
if regime == 0 && n - floor(n) ~= 0
  convencao = input("Informe a convenção a ser utilizada para a capitalização durante a parte não inteira do período de tempo de seu investimento. Para a convenção exponencial, que aplica o cálculo de juros compostos, digite 0. Para a convenção linear, que aplica o cálculo de juros simples, digite 1.\n");
	while convencao ~= 0 && convencao ~= 1
		convencao = input("Entrada inválida. Digite 0 para selecionar a convenção exponencial ou 1 para selecionar a convenção linear.\n");
  end
else
  convencao = 0;
end

%% Entrada da taxa de juros efetiva em percentual
i = input("Informe a taxa de juros efetiva correspondente à unidade de tempo informada. Por favor, digite a taxa em sua forma percentual, sem o símbolo %. Exemplo: para um prazo informado em anos, digite a taxa de juros efetiva ao ano. Para uma taxa de 7,75% ou 0,0775, digite o valor 7.75, apenas.\n");


% Processamento de dados

%% Transformação da taxa de juros de percentagem para decimal
i = i/100;

%% Cálculo do valor futuro
if regime == 1
	vf = vp*(1+i*n);				        % para juros simples
elseif regime == 0 && convencao == 0
	vf = vp*(1+i)^n;			          % para juros compostos para períodos inteiros ou na convenção exponencial para períodos não inteiros
elseif regime == 0 && convencao == 1
	vf = vp*(1+i)^floor(n);
	vf = vf + vf*i*(n - floor(n));	  % para juros compostos na convenção linear para períodos não inteiros
end


% Saída de dados

if floor(vf)>1
	printf("O valor capitalizado é de %.2f unidades monetárias.\n", vf);
else
	printf("O valor capitalizado é de %.2f unidade monetária.\n", vf);
end


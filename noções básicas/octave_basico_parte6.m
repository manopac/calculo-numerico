% Universidade do Estado do Rio de Janeiro -UERJ
% Calculo Numerico

% Aula 2 - No��es de Programa��o para Computa��o Cient�fica

% Prof. Americo Cunha
% Prof. Augusto Barbosa
% Prof. Luiz Mariano Carvalho
% Profa. Nancy Baygorrea


% Representa��o Gr�fica de Fun��es

clc
clear

% definindo uma fun��o tipo "handle"
f = @(x) x.^2 - 4*x + 3
g = @(x) sin(2*x+pi/2)

% avaliando as fun��es
f(1)
g(0)

% definindo s�ries de dados para a fun��o f
x = 0:1:4
y = f(x)

% plotando o gr�fico de f
plot(x,y,'-or')

% definindo s�ries de dados para a fun��o g
x = 0:0.1:4*pi;
y = g(x);

% plotando o gr�fico de g
plot(x,y,'-or')
clc
clear

% example 1
a = input('Digite o primeiro intervalo x1:');
b = input('Digite o segundo intervalo x2: ');
tol = 1.0e-4;
f = @(x) x^3-9*x+3;
if f(a)*f(b) > 0
  fprintf('Não existe raizes nesse intervalo\n');
  return
end
root = bisection(f,a,b,tol);


clc; clear

syms x

f = exp(x);
a = 0;

taylor(f, x, a, 'order', 6)
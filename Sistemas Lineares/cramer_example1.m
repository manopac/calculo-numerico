clc
clear

n = 8;

A = eye(n,n)
b = ones(n,1)

tic
x = cramer(A,b); 
toc

disp(x)
clc
clear

format long

A = [1 2 3 4; 2 1 4 3; 3 2 1 4; 4 3 2 1]
b = [10; 10; 10; 10]

[x,A,b] = gauss(A,b)
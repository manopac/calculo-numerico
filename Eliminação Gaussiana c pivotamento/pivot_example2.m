clc
clear

A = [5 -6; 1e-16 10]
b = [-1; 10+1e-16]

x = gauss(A,b)
clc
clear

A = [1e-16 10; 5 -6]
b = [10+1e-16; -1]

x = gaussPivotP(A,b)
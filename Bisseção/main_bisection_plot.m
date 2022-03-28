clc
clear
close all


%  bisection plot
a = 20.0; b = 30.0; tol = 1.0e-3;
f = @(x) x.^3-30*x.^2+2552;

N = 1000;
xmin = 0.0; xmax = 30.0; ymin = -1500; ymax =  3000;


%a = 0.0; b = 2.0; tol = 1.0e-9;
%f = @(x) x.^2-2;

%N = 1000;
%xmin = 0.0; xmax = 2.0; ymin = 0; ymax =  4;


bisection_plot(f,a,b,tol,xmin,xmax,ymin,ymax,N)
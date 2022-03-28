clc
clear
close all

%  fixed point plot 
%g = @(x) exp(-x);
%x0 = 0.5; tol=1.0e-2; maxiter = 5;
%xmin = 0.0; xmax = 1.0; ymin = 0.0; ymax = 1.0;
%N = 1000;

% g=@(x) (1+x)./(1+exp(x));
% x0 = 0.5; tol=1.0e-2; maxiter = 5;
% xmin = 0.0; xmax = 0.6; ymin = 0.0; ymax = 0.6;
% N = 1000;

 g = @(x) x + 1-x.*exp(x);
 x0 = 0.5; tol=1.0e-2; maxiter = 4;
 xmin = -1.0; xmax = 1.0; ymin = 0.0; ymax =  1.0;
 N = 1000;

%  fixed point plot 
fixedpoint_plot(g,x0,tol,maxiter,xmin,xmax,ymin,ymax,N)
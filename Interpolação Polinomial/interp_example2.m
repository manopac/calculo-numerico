clc; clear; close all

xdat = [1;2;4]; ydat = [1;3;3];

A = vander(xdat)
xsol = A\ydat

p = @(x) polyval(xsol, x);
xgrid = 0:0.01:5; ygrid = p(xgrid);

plot(xdat,ydat,'om',xgrid,ygrid,'-b','LineWidth',2)
xlabel('x'); ylabel('y');
set(gca,'FontSize',18);
legend('dados','p(x)','Location','best')
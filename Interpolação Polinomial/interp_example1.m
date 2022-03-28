clc; clear; close all

f = @(x) log(x).*exp(sqrt(x))./(log(1+exp(x))+x.^3);

xdat = [1.3 2.1 4.0 5.8 8.1]; ydat = f(xdat);
xgrid = 0.1:0.01:10; ygrid = f(xgrid);

A = [xdat.^4; xdat.^3; xdat.^2; xdat; ones(1,5)]';
xsol = A\ydat';
p1 = xsol(1)*xgrid.^4 + xsol(2)*xgrid.^3 + ...
     xsol(3)*xgrid.^2 + xsol(4)*xgrid + xsol(5);

A = [exp(-xdat.^2); exp(-xdat); xdat.^2; xdat; ones(1,5)]';
xsol = A\ydat';
p2 = xsol(1)*exp(-xgrid.^2) + xsol(2)*exp(-xgrid) + ...
     xsol(3)*xgrid.^2 + xsol(4)*xgrid + xsol(5);
 
plot(xdat,ydat,'om','LineWidth',2);
hold on
plot(xgrid,ygrid, '--k','LineWidth',2);
plot(xgrid,p1,'-.r','LineWidth',2);
plot(xgrid,p2, '-b','LineWidth',2);
hold off
xlabel('x'); ylabel('y');
set(gca,'FontSize',18);
legend('dados','f(x)','p1(x)','p2(x)')
xlim([0 10]); ylim([0 0.5]);
clc; clear; close all

xdat = [1;2;4]; ydat = [1;3;3];

p0 = @(x)  1*ones(size(x));
p1 = @(x) p0(x) + 2*(x-1);
p2 = @(x) p1(x) - (2/3)*(x-1).*(x-2);
xgrid = 0:0.01:5;

plot(xdat,ydat,'om','LineWidth',2)
hold on
plot(xgrid,p0(xgrid),'--r','LineWidth',2)
plot(xgrid,p1(xgrid),'-.c','LineWidth',2)
plot(xgrid,p2(xgrid), '-b','LineWidth',2)
plot([xdat(1),xdat(1)],[-4,10],'--k','LineWidth',0.5);
plot([xdat(2),xdat(2)],[-4,10],'--k','LineWidth',0.5);
plot([xdat(3),xdat(3)],[-4,10],'--k','LineWidth',0.5);
hold off
xlabel('x'); ylabel('y');
set(gca,'FontSize',18);
xlim([0 5]); ylim([-4 10]);
legend('dados','p_0(x)','p_1(x)','p_2(x)','Location','best')
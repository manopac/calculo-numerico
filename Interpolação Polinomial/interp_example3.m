clc; clear; close all

xdat = [1;2;4]; ydat = [1;3;3];

L0 = @(x)  (1/3)*(x-2).*(x-4);
L1 = @(x) -(1/2)*(x-1).*(x-4);
L2 = @(x)  (1/6)*(x-1).*(x-2);
p =  @(x) ydat(3)*L2(x) + ydat(2)*L1(x) + ydat(1)*L0(x);
xgrid = 0:0.01:5; ygrid = p(xgrid);

plot(xdat,ydat,'om','LineWidth',2)
hold on
plot(xgrid,L2(xgrid),'--r','LineWidth',1)
plot(xgrid,L1(xgrid),'-.c','LineWidth',1)
plot(xgrid,L0(xgrid), ':g','LineWidth',1)
plot(xgrid,ygrid,'-b','LineWidth',2)
plot([xdat(1),xdat(1)],[-3,4],'--k','LineWidth',0.5);
plot([xdat(2),xdat(2)],[-3,4],'--k','LineWidth',0.5);
plot([xdat(3),xdat(3)],[-3,4],'--k','LineWidth',0.5);
hold off
xlabel('x'); ylabel('y');
set(gca,'FontSize',18);
legend('dados','L2','L1','L0','p(x)','Location','best')
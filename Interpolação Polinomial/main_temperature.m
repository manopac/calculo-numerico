clc
clear
close all

% temperatura cidade do Rio de Janeiro (1º até 15 de Maio de 2021)
% https://tempo.inmet.gov.br/Graficos/A001
RJ_temp_max = [21.2 23.2 24.6 24.3 25.3 26.6 27.0 26.1 24.6 24.0 23.8 25.4 25.8 25.8 25.5];
RJ_temp_min = [16.4 15.4 13.9 15.5 12.5 13.3 14.5 17.6 15.9 15.6 12.8 11.6 15.3 12.4 12.1];

% temperatura media
RJ_temp_med = 0.5*(RJ_temp_max + RJ_temp_min);

xdata = 2:3:15
ydata = RJ_temp_med(xdata)

coef_interp = polyfit(xdata,ydata,length(xdata))
coef_fit    = polyfit(1:15,RJ_temp_med,6)
p_med_interp = @(x) polyval(coef_interp,x);
p_med_fit    = @(x) polyval(coef_fit,x);

x = 1:0.1:15;
y_interp = p_med_interp(x);
y_fit    = p_med_fit(x);
plot(1:15,RJ_temp_med,'om',x,y_interp,'-b',x,y_fit,'--k','LineWidth',2)
legend('dados','interpolacao','regressao')
set(gca,'FontSize',18);
xlim([1 15]);
ylim([0 50]);
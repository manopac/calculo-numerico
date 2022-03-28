clc; clear

f = @(x) exp(x);
x = -2:0.1:2; y = f(x);
Nx = length(x); k = 5;

T = zeros(k+1,Nx); T(1,:) = ones(1,Nx);
for n=2:k+1
    T(n,:) = T(n-1,:) + x.^(n-1) / factorial(n-1);
end

plot(x,y,'-k','linewidth',3);
hold on
for n=1:k+1
    plot(x,T(n,:),'linewidth',1.5);
end
hold off
set(gca,'fontsize', 22)
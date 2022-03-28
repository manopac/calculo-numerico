%%
 clear all
clc
 x=-3:0.1:3;
 y=3.*x+sin(x)-exp(x);
 plot(x,y)
 grid on
%%
a=0;
b=1;
tol=0.01;
myfun=inline('3.*x+sin(x)-exp(x)');
z=bisection(myfun,a,b,tol);
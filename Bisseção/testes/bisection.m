% function to find the roots of given f(x) using bisection method 
% if 'a' and 'b' are two guess values , and f(a)*f(b)<0
% then c=(a+b)/2 , f(c) 
% if fa*fc<0
% b=c else a=c 
function [x] = bisection(f,a,b,tol)
i=0;
fa =feval(f,a);
fb=feval(f,b);
if fa*fb>0
    disp('fa and fb must have different signs i.e fa*fb<0')
    disp( ' root doesnt lie in between a and b')
    return 
end 
disp('iter        a         x=(a+b)/2           b                  fa           fb            fx          error(a-b)') 
disp('----------------------------------------------------------------------------------------------------------------')
while fa*fb<0 
    i=i+1;
    x=(a+b)/2;
    fx=feval(f,x);
    if fx==0
        disp(['root = ' num2str(fx)])
    end
    error=(a-b);
    fprintf('%i \t %.4f \t %.4f \t %.4f \t %.4f \t %.4f \t %.4f \t %.4f  \n',i-1,a,x,b,fa,fb,fx,error) 
    if fa*fx<0
        b=x;
        fb=fx;
    else 
        a=x;
        fa=fx;
    end
    if abs(error)<tol
        break
    end
   
end 
disp(['root = ' num2str(x) ' found in  ' num2str(i) ' itterations'])
disp(['with approximate tolerance of ' num2str(tol)])
% fun��o
function [x1,x2] = eq2(a,b,c)
  x1 = (-b + sqrt(b^2 - 4*a*c))/(2*a);
  x2 = (-b - sqrt(b^2 - 4*a*c))/(2*a);
endfunction
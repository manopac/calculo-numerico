function x_star = transcendental(p,q)
    
    x = (p+q)/2;
    tol = 0.09;
    x_star = p-q^x-e^-x;   
  
while (q-p >= tol)
   x = (p+q)/2;
   if(x==0)
   break;
   elseif(p*x <0)
   q=x;
 else
   p=x
   end
        
       
end 

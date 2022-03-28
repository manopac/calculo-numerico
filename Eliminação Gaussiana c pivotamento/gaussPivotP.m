function [x,A,b] = gaussPivotP(A,b)
   n = length(b);
   for k=1:n-1
      [A,b] = pivoting(A,b,n,k);
      for i=k+1:n
         Lik = -A(i,k)/A(k,k);
         for j=1:n
            A(i,j) = A(i,j) + Lik*A(k,j);
         end
         b(i) = b(i) + Lik*b(k);
      end
   end
   x = backwardsub(A,b);
end
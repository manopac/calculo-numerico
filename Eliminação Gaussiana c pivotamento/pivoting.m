function [A,b] = pivoting(A,b,n,k)
      pivot = abs(A(k,k));
      row   = k;
      for i=k+1:n
        if abs(A(i,k)) > pivot
            pivot = abs(A(i,k));
            row   = i;
        end
      end
      for j=k:n
         swap     = A(row,j);
         A(row,j) = A(k,j);
         A(k,j)   = swap;
      end
      swap   = b(row);
      b(row) = b(k);
      b(k)   = swap;
end
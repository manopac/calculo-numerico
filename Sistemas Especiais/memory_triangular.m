clc
clear 

% prefix
k = 1024;
M = 1024*k;
G = 1024*M;
T = 1024*G;
P = 1024*T;

% memory of a double (8 bytes)
MEM_DBL = 8;

% matrix dimension
n = 10^8;

    disp('matrix dimension')
    disp(n)
    disp('')
    disp('trinagular system')
    triangular = n*(n+1)/2 + 2*n
    disp('')
    mem_trinagular_bytes_ = triangular*MEM_DBL
    mem_trinagular_kbytes = triangular*MEM_DBL/k
    mem_trinagular_Mbytes = triangular*MEM_DBL/M
    mem_trinagular_Gbytes = triangular*MEM_DBL/G
    mem_trinagular_Tbytes = triangular*MEM_DBL/T
    mem_trinagular_Pbytes = triangular*MEM_DBL/P
    disp('')
    disp('diagonal system')
    diagonal   = 3*n
    disp('')
    mem_diagonal_bytes_ = diagonal*MEM_DBL
    mem_diagonal_kbytes = diagonal*MEM_DBL/k
    mem_diagonal_Mbytes = diagonal*MEM_DBL/M
    mem_diagonal_Gbytes = diagonal*MEM_DBL/G
    mem_diagonal_Tbytes = diagonal*MEM_DBL/T
    mem_diagonal_Pbytes = diagonal*MEM_DBL/P
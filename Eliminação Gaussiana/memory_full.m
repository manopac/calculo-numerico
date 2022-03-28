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
    disp('full system')
    full = n^2 + 2*n
    disp('')
    mem_full_bytes_ = full*MEM_DBL
    mem_full_kbytes = full*MEM_DBL/k
    mem_full_Mbytes = full*MEM_DBL/M
    mem_full_Gbytes = full*MEM_DBL/G
    mem_full_Tbytes = full*MEM_DBL/T
    mem_full_Pbytes = full*MEM_DBL/P

clc
clear 

% FLOPS
FLOPS2011 = 12e9;
FLOPS2021 = 52e9;

% prefix
min  = 60;
hour = 60*min;
day  = 24*hour;
year = 365*day;

% matrix dimension
n = 10^8;

    disp('matrix dimension')
    disp(n)
    disp('')
    disp('trinagular system')
    flops_triangular = n^2
    disp('')
    time_trinagular_2011_seg_ = flops_triangular/FLOPS2011
    time_trinagular_2011_min_ = flops_triangular/FLOPS2011/min
    time_trinagular_2011_hour = flops_triangular/FLOPS2011/min
    time_trinagular_2011_day_ = flops_triangular/FLOPS2011/day
    time_trinagular_2011_year = flops_triangular/FLOPS2011/year
    disp('')    
    time_trinagular_2021_seg_ = flops_triangular/FLOPS2021
    time_trinagular_2021_min_ = flops_triangular/FLOPS2021/min
    time_trinagular_2021_hour = flops_triangular/FLOPS2021/min
    time_trinagular_2021_day_ = flops_triangular/FLOPS2021/day
    time_trinagular_2021_year = flops_triangular/FLOPS2021/year
    disp('')
    disp('diagonal system')
    flops_diagonal = n
    disp('')
    time_diagonal_2011_seg_ = flops_diagonal/FLOPS2011
    time_diagonal_2011_min_ = flops_diagonal/FLOPS2011/min
    time_diagonal_2011_hour = flops_diagonal/FLOPS2011/min
    time_diagonal_2011_day_ = flops_diagonal/FLOPS2011/day
    time_diagonal_2011_year = flops_diagonal/FLOPS2011/year
    disp('')    
    time_diagonal_2021_seg_ = flops_diagonal/FLOPS2021
    time_diagonal_2021_min_ = flops_diagonal/FLOPS2021/min
    time_diagonal_2021_hour = flops_diagonal/FLOPS2021/min
    time_diagonal_2021_day_ = flops_diagonal/FLOPS2021/day
    time_diagonal_2021_year = flops_diagonal/FLOPS2021/year
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
    disp('Gaussian Elimination')
    flops_gauss = 2/3*n^3 + n^2
    disp('')
    time_gauss_2011_seg_ = flops_gauss/FLOPS2011
    time_gauss_2011_min_ = flops_gauss/FLOPS2011/min
    time_gauss_2011_hour = flops_gauss/FLOPS2011/hour
    time_gauss_2011_day_ = flops_gauss/FLOPS2011/day
    time_gauss_2011_year = flops_gauss/FLOPS2011/year
    disp('')    
    time_gauss_2021_seg_ = flops_gauss/FLOPS2021
    time_gauss_2021_min_ = flops_gauss/FLOPS2021/min
    time_gauss_2021_hour = flops_gauss/FLOPS2021/hour
    time_gauss_2021_day_ = flops_gauss/FLOPS2021/day
    time_gauss_2021_year = flops_gauss/FLOPS2021/year
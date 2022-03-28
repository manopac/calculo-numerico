clear
clc

b1 = 180;
b2 = 165;
c1 = 115;
A1 = 120*pi/180;
A2 = 100*pi/180;
a = sqrt(b1^2 + c1^2 - 2*b1*c1*cos(A1));
roots([1,-2*b2*cos(A2),b2^2-a^2])
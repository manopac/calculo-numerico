L_1 = 0.5;
L_2 = 1.5;
R = L_2 / L_1;
A_d = 0:0.5:180;
A_r = A_d*(pi/180);
B = asin(R*sin(A_r));
d = L_1*cos(B)+L_2*cos(A_r);
plot(A_d,d), xlabel('A (graus)'), ylabel('d (pés)'),grid
clc;
clear;
close all;

s = tf('s');

% Second order system

G2 = 10/(s^2 + 2*s + 10);

figure;
step(G2);
title('Step Response of Second Order System');
grid on;

H = feedback(G2, 1);

figure;
step(H);
title('Closed Loop Step Response of second order system');
grid on;

figure;
bode(G2);
grid on;
title('Bode Plot of the second order System');

figure;
rlocus(G2);
grid on;
title('Root locus of second order system')

